package com.oj.bizpolinoj.domain.bo;

import lombok.Data;

@Data
public class SubmitBO {
    private Long id;
    private Long problemId;
    private String sourceSubmitId;
    private String code;
    private Long userId;
    private String userName;
    private Integer status;
    private Long execTime;
    private Long execMemory;
    private String ccInfo;
    private String runInfo;
    private Long contextId;
    private Long submitTime;
}
