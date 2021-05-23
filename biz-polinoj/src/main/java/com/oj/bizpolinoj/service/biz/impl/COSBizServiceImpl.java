package com.oj.bizpolinoj.service.biz.impl;

import com.jlefebure.spring.boot.minio.MinioException;
import com.jlefebure.spring.boot.minio.MinioService;
import com.oj.bizpolinoj.service.biz.COSBizService;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.consts.MinioConsts;
import com.oj.commonpolinoj.dto.COSDTO;
import com.oj.commonpolinoj.dto.COSPreviewDTO;
import com.oj.commonpolinoj.dto.COSUploadDTO;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.entity.ContentType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

@Slf4j
@Service
public class COSBizServiceImpl implements COSBizService {
    @Autowired
    private MinioService minioService;

    @Override
    public COSDTO upload(COSUploadDTO cosUploadDTO) {
        // check
        List<String> collect = new ArrayList<>();

        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(cosUploadDTO.getContext());
            ZipInputStream zipInputStream = new ZipInputStream(byteArrayInputStream);
            for (ZipEntry nextEntry = zipInputStream.getNextEntry();
                 nextEntry != null;
                 nextEntry = zipInputStream.getNextEntry()) {
                collect.add(nextEntry.getName());
            }

            collect.sort(String::compareTo);
            if (collect.size() == 0) {
                throw OJException.buildOJException(OJErrorCode.NOFUND_FILE_IN_ZIPFILE);
            }

            if (collect.size() % 2 != 0) {
                throw OJException.buildOJException(OJErrorCode.ZIPFILE_EVEN_ERROR);
            }
            for (int i = 0; i < collect.size(); i += 2) {
                String inFile = collect.get(i);
                String outFile = collect.get(i + 1);
                if (!StringUtils.endsWith(inFile, ".in")
                        || !StringUtils.endsWith(outFile, ".out")
                        || !inFile.substring(0, inFile.length() - 3).equals(outFile.substring(0, outFile.length() - 4))) {
                    throw OJException.buildOJException(OJErrorCode.ZIPFILE_NAME_ERROR);
                }
            }
        } catch (IOException e) {
            throw OJException.buildOJException(OJErrorCode.UPLOAD_FAILED, e.getMessage());
        }


        InputStream inputStream = new ByteArrayInputStream(cosUploadDTO.getContext());
        String path = MinioConsts.samplePath + "/" + cosUploadDTO.getProblemId() + ".zip";
        try {
            minioService.upload(Paths.get(path), inputStream, ContentType.DEFAULT_BINARY);
            COSDTO cosDTO = new COSDTO();
            cosDTO.setPath(path);
            cosDTO.setFilenames(collect);
            return cosDTO;
        } catch (MinioException e) {
            log.error("upload file failed!", e);
            throw OJException.buildOJException(OJErrorCode.UPLOAD_FAILED, e.getMessage());
        }
    }

    @Override
    public COSDTO preview(COSPreviewDTO cosPreviewDTO) {
        COSDTO cosDTO = new COSDTO();
        String path = MinioConsts.samplePath + "/" + cosPreviewDTO.getProblemId() + ".zip";
        cosDTO.setPath(path);
        try {
            InputStream inputStream = minioService.get(Paths.get(path));
            ZipInputStream zipInputStream = new ZipInputStream(inputStream);
            List<String> name = new ArrayList<>();
            for (ZipEntry nextEntry = zipInputStream.getNextEntry();
                 nextEntry != null;
                 nextEntry = zipInputStream.getNextEntry()) {
                name.add(nextEntry.getName());
            }
            cosDTO.setFilenames(name);
        } catch (MinioException | IOException e) {
            log.error("no file in cos with problem '{}'", cosPreviewDTO.getProblemId(), e);
            cosDTO.setFilenames(new ArrayList<>());
        }
        return cosDTO;
    }
}
