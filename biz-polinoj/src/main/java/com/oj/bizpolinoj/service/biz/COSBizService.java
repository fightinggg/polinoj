package com.oj.bizpolinoj.service.biz;

import com.oj.commonpolinoj.dto.COSDTO;
import com.oj.commonpolinoj.dto.COSPreviewDTO;
import com.oj.commonpolinoj.dto.COSUploadDTO;

import java.io.File;

public interface COSBizService {
    COSDTO upload( COSUploadDTO COSUploadDTO);

    COSDTO preview(COSPreviewDTO cosPreviewDTO);
}
