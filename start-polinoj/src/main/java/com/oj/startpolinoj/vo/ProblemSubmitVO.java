package com.oj.startpolinoj.vo;

import lombok.Data;

@Data
public class ProblemSubmitVO {
    Long problemId;
    Long contextId;
    String code;
    String lang;
}
