package com.oj.commonpolinoj.dto;

import lombok.Data;

import java.util.List;

@Data
public class ContextRankDTO {
    @Data
    public static class ProblemStateDTO {
        Long problemId;
        Boolean firstBlood;
        Boolean accept;
        Long acceptTime;
        Integer punish;
        Long score;
    }

    List<ProblemStateDTO> problemStateDTOList;
    Integer rank;
    Boolean star;
    Long score;
    Long acceptCount;
    String userName;
    Long userId;
}
