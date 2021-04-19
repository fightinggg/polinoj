package com.oj.startpolinoj.vo;

import lombok.Data;

import java.util.List;

@Data
public class ContextUpdateVO {

    private Long id;

    private String name;

    private Long beginTime;

    private Long endTime;

    private List<Long> problemId;
}
