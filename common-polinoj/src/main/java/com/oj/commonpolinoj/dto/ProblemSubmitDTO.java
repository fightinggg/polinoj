package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class ProblemSubmitDTO {
    Long problemId;
    Long contextId;
    String code;
    String lang;
    Long userId;
}
