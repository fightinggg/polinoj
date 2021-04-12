package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class SubmitResultGetDTO {
    String source;
    String problemId;
    String user;
    String status;
    String pageIndex;
    String pageSize;
}
