package com.oj.startpolinoj.vo;

import lombok.Data;

import java.util.List;

@Data
public class ContextCreateVO {

    private String name;

    private Long beginTime;

    private Long endTime;

//    private Long ownerId;

    private List<Long> problemId;
}
