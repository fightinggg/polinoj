package com.oj.startpolinoj.vo;

import lombok.Data;

@Data
public class ContextJoinVO {
    private Long id;

    private Long userId;

    private Long contextId;

    private Boolean star;
}
