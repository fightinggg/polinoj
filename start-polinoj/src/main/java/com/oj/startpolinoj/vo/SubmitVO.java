package com.oj.startpolinoj.vo;

import lombok.Data;

import java.util.List;

@Data
public class SubmitVO {
    private Long id;
    private Long problemId;
    private Long userId;
    private String userName;
    private String status;
    private String code;
    private String submitTime;
    private Long execTime;
    private Long execMemory;
    private String ccInfo;
    private List<SampleTestResultVO> runInfo;
}
