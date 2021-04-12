package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class SubmitResultDTO {
    String problemSource;
    String problemId;
    String user;
    String status;
    String code;
    String submitTime;
    String execTime;
    String execMemory;
}
