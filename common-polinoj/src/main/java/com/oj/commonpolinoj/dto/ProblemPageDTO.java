package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class ProblemPageDTO {
    String operatorUser;
    String source;

    Long pageIndex;
    Long pageSize;
}
