package com.oj.startpolinoj.vo;

import lombok.Data;

@Data
public class ProblemPageVO {
    String operatorUser;
    String source;

    Long pageIndex;
    Long pageSize;
}
