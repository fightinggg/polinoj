package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class ProblemSubmitDTO {
    String problemId;
    String source;
    String code;
    String lang;
}
