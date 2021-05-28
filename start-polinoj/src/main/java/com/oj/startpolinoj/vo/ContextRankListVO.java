package com.oj.startpolinoj.vo;

import lombok.Data;

import java.util.List;

@Data
public class ContextRankListVO {
    List<ContextRankVO> list;
    Long problemSize;
}