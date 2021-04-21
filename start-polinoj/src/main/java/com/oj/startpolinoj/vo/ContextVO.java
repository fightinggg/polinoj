package com.oj.startpolinoj.vo;

import lombok.Data;

import java.util.List;

@Data
public class ContextVO {

    private Long id;

    private String name;

    private Long beginTime;

    private Long endTime;

    private Long ownerId;

    private String ownerName;

    private List<Long> problemId;
}
