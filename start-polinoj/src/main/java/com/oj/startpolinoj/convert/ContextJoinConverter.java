package com.oj.startpolinoj.convert;

import com.oj.commonpolinoj.dto.ContextJoinDTO;
import com.oj.commonpolinoj.dto.ContextJoinUpdateDTO;
import com.oj.startpolinoj.vo.ContextJoinUpdateVO;
import com.oj.startpolinoj.vo.ContextJoinVO;

public class ContextJoinConverter {
    public static ContextJoinVO toContextJoinVO(ContextJoinDTO contextJoinDTO) {
        ContextJoinVO contextJoinVO = new ContextJoinVO();
        contextJoinVO.setId(contextJoinDTO.getId());
        contextJoinVO.setUserId(contextJoinDTO.getUserId());
        contextJoinVO.setContextId(contextJoinDTO.getContextId());
        contextJoinVO.setStar(contextJoinDTO.getStar());
        return contextJoinVO;
    }

    public static ContextJoinUpdateDTO toContextJoinDTO(ContextJoinUpdateVO contextJoinUpdateVO) {
        ContextJoinUpdateDTO contextJoinUpdateDTO = new ContextJoinUpdateDTO();
//        contextJoinUpdateDTO.setUserId(contextJoinUpdateVO.getUserId());
        contextJoinUpdateDTO.setContextId(contextJoinUpdateVO.getContextId());
        contextJoinUpdateDTO.setStar(contextJoinUpdateVO.getStar());
        return contextJoinUpdateDTO;

    }
}
