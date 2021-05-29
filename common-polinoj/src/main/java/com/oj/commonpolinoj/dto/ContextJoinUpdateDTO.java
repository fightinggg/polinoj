package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class ContextJoinUpdateDTO {
    private Long userId;

    private Long contextId;

    private Boolean star;
}
