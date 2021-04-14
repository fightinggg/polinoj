package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class ProblemRemotePageDTO {
    String source;

    Integer pageIndex;
    Integer pageSize;
}
