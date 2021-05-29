package com.oj.bizpolinoj.domain.bo;

import lombok.Data;

import java.util.List;

@Data
public class ContextBO {

    private Long id;

    private String name;

    private Long beginTime;

    private Long endTime;

    private Long ownerId;

    private String ownerName;

    private List<Long> problemId;

    private Boolean join;

    private Boolean star;
}
