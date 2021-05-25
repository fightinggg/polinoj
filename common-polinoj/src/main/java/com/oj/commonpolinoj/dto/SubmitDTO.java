package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class SubmitDTO {
    private Long id;
    private Long problemId;
    private String sourceSubmitId;
    private Long userId;
    private String userName;
    private Integer status;
    private String code;
    private String submitTime;
    private Long execTime;
    private Long execMemory;
    private String ccInfo;
    private String runInfo;
}
