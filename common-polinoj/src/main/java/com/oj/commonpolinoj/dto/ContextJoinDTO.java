package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class ContextJoinDTO {
    private Long id;

    private Long userId;

    private Long contextId;

    private Boolean star;
}
