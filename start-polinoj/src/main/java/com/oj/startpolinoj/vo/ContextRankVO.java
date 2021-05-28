package com.oj.startpolinoj.vo;

import com.oj.commonpolinoj.dto.ContextRankDTO;
import lombok.Data;

import java.util.List;

@Data
public class ContextRankVO {
    @Data
    public static class ProblemStateVO {
        Long problemId;
        Boolean firstBlood;
        Boolean accept;
        Long acceptTime;
        Integer punish;
        Long score;
    }

    List<ContextRankVO.ProblemStateVO> problemStateVOList;
    Integer rank;
    Boolean star;
    Long score;
    Long acceptCount;
    String userName;
    Long userId;
}
