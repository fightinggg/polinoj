package com.oj.startpolinoj.vo;

import lombok.Data;

@Data
public class SubmitResultVO {
    String problemSource;
    String problemId;
    String user;
    String status;
    String code;
    String submitTime;
    String execTime;
    String execMemory;
}
