package com.oj.startpolinoj.vo;

import lombok.Data;

@Data
public class SubmitPageVO {
    String source;
    Long problemId;
    String user;
    String status;
    Integer pageIndex;
    Integer pageSize;
}
