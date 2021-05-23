package com.oj.startpolinoj.controller;

import com.oj.bizpolinoj.service.biz.COSBizService;
import com.oj.commonpolinoj.HttpResult;
import com.oj.commonpolinoj.dto.COSDTO;
import com.oj.commonpolinoj.dto.COSPreviewDTO;
import com.oj.commonpolinoj.dto.COSUploadDTO;
import com.oj.commonpolinoj.dto.UserDTO;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.IOException;

import static com.oj.commonpolinoj.consts.SessionNameConsts.UserSessionName;

@RestController
@RequestMapping("/api/cos")
public class COSController {

    @Autowired
    COSBizService cosBizService;

    @PostMapping("/upload/sample/{problemId}")
    HttpResult<COSDTO> upload(@RequestPart("file") MultipartFile file, HttpServletRequest request,
                              @PathVariable String problemId) throws IOException {
        HttpSession session = request.getSession();
        UserDTO userDTO = (UserDTO) session.getAttribute(UserSessionName);
        COSUploadDTO cosUploadDTO = new COSUploadDTO();
        cosUploadDTO.setOperatorUser(userDTO.getId());
        cosUploadDTO.setProblemId(problemId);
        cosUploadDTO.setContext(file.getBytes());

        COSDTO upload = cosBizService.upload(cosUploadDTO);
        return HttpResult.success(upload);
    }

    @GetMapping("/preview/sample/{problemId}")
    HttpResult<COSDTO> preview(HttpServletRequest request, @PathVariable String problemId){
        COSPreviewDTO cosPreviewDTO = new COSPreviewDTO();
        cosPreviewDTO.setProblemId(problemId);
        COSDTO preview = cosBizService.preview(cosPreviewDTO);
        return HttpResult.success(preview);
    }
}
