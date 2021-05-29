package com.oj.dalpolinoj.converter;

import com.oj.commonpolinoj.dto.ContextJoinCreateDTO;
import com.oj.commonpolinoj.dto.ContextJoinDTO;
import com.oj.commonpolinoj.dto.ContextJoinGetDTO;
import com.oj.commonpolinoj.dto.ContextJoinUpdateDTO;
import com.oj.dalpolinoj.domin.ContextJoin;

public class ContextJoinConverter {
    public static ContextJoinDTO toContextJoinDTO(ContextJoin contextJoin) {
        ContextJoinDTO contextJoinDTO = new ContextJoinDTO();
        contextJoinDTO.setId(contextJoin.getId());
        contextJoinDTO.setUserId(contextJoin.getUserId());
        contextJoinDTO.setContextId(contextJoin.getContextId());
        contextJoinDTO.setStar(contextJoin.getStar());
        return contextJoinDTO;

    }

    public static ContextJoin toContextJoinDO(ContextJoinCreateDTO contextJoinCreateDTO) {
        ContextJoin contextJoin = new ContextJoin();
//        contextJoin.setId();
        contextJoin.setUserId(contextJoinCreateDTO.getUserId());
        contextJoin.setContextId(contextJoinCreateDTO.getContextId());
        contextJoin.setStar(contextJoinCreateDTO.getStar());
        return contextJoin;
    }

    public static ContextJoin toContextJoinDO(ContextJoinUpdateDTO contextJoinUpdateDTO) {
        ContextJoin contextJoin = new ContextJoin();
//        contextJoin.setId();
        contextJoin.setUserId(contextJoinUpdateDTO.getUserId());
        contextJoin.setContextId(contextJoinUpdateDTO.getContextId());
        contextJoin.setStar(contextJoinUpdateDTO.getStar());
        return contextJoin;
    }
}
