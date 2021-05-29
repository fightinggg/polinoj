package com.oj.bizpolinoj.converter;

import com.oj.bizpolinoj.domain.bo.ContextBO;
import com.oj.commonpolinoj.dto.ContextDTO;

public class ContextConverter {
    public static ContextBO toContextBO(ContextDTO contextDTO) {
        ContextBO contextBO = new ContextBO();
        contextBO.setId(contextDTO.getId());
        contextBO.setName(contextDTO.getName());
        contextBO.setBeginTime(contextDTO.getBeginTime());
        contextBO.setEndTime(contextDTO.getEndTime());
        contextBO.setOwnerId(contextDTO.getOwnerId());
        contextBO.setOwnerName(contextDTO.getOwnerName());
        contextBO.setProblemId(contextDTO.getProblemId());
//        contextBO.setJoin();
        return contextBO;
    }
}
