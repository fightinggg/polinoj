package com.oj.commonpolinoj.dto;

import lombok.Data;

import java.util.List;

@Data
public class ContextRankListDTO {
    List<ContextRankDTO> list;
    Long problemSize;
}
