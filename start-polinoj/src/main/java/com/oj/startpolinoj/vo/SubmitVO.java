package com.oj.startpolinoj.vo;

import lombok.Data;

@Data
public class SubmitVO {
    Long id;
    Long problemId;
    Long userId;
    String userName;
    String status;
    String code;
    String submitTime;
    Long execTime;
    Long execMemory;
}
