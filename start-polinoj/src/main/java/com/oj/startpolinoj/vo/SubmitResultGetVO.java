package com.oj.startpolinoj.vo;

import lombok.Data;

@Data
public class SubmitResultGetVO {
    String source;
    String problemId;
    String user;
    String status;
    String pageIndex;
    String pageSize;
}
