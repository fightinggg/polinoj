package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class ContextJoinCreateDTO {
    private Long userId;

    private Long contextId;

    private Boolean star;
}
