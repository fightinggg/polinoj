package com.oj.commonpolinoj.dto;

import lombok.Data;

import java.util.List;

@Data
public class ContextUpdateDTO {
    private Long id;

    private String name;

    private Long beginTime;

    private Long endTime;

    private List<Long> problemId;
}
