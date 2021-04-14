package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class SubmitPageDTO {
    String source;
    Long problemId;
    String user;
    String status;
    Integer pageIndex;
    Integer pageSize;
}
