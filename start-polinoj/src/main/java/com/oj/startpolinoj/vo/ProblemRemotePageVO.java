package com.oj.startpolinoj.vo;

import lombok.Data;

@Data
public class ProblemRemotePageVO {
    String source;
    String operatorUser;

    Integer pageIndex;
    Integer pageSize;
}
