package com.oj.startpolinoj.vo;

import lombok.Data;

@Data
public class SubmitVO {
    Long id;
    Long problemId;
    String user;
    String status;
    String code;
    String submitTime;
    Long execTime;
    Long execMemory;
}
