package com.oj.commonpolinoj.dto;

import lombok.Data;

import java.util.List;

@Data
public class ContextCreateDTO {

    private String name;

    private Long beginTime;

    private Long endTime;

    private Long ownerId;

    private List<Long> problemId;
}
