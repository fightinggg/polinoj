package com.oj.commonpolinoj.dto;

import lombok.Data;

import java.util.List;

@Data
public class COSUploadDTO {
    byte[] context;
    String problemId;
    Long operatorUser;
}
