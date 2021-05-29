package com.oj.bizpolinoj.service.atom.impl;

import com.oj.bizpolinoj.service.atom.ContextJoinService;
import com.oj.commonpolinoj.dto.ContextJoinCreateDTO;
import com.oj.commonpolinoj.dto.ContextJoinDTO;
import com.oj.commonpolinoj.dto.ContextJoinGetDTO;
import com.oj.commonpolinoj.dto.ContextJoinUpdateDTO;
import com.oj.dalpolinoj.service.ContextJoinDAOService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContextJoinServiceImpl implements ContextJoinService {
    @Autowired
    ContextJoinDAOService contextJoinDAOService;

    @Override
    public ContextJoinDTO getContextJoin(ContextJoinGetDTO contextJoinGetDTO) {
        return contextJoinDAOService.getContextJoin(contextJoinGetDTO);
    }

    @Override
    public ContextJoinDTO createContextJoin(ContextJoinCreateDTO contextJoinCreateDTO) {
        ContextJoinGetDTO contextJoinGetDTO = new ContextJoinGetDTO();
        contextJoinGetDTO.setContextId(contextJoinCreateDTO.getContextId());
        contextJoinGetDTO.setUserId(contextJoinCreateDTO.getUserId());
        final ContextJoinDTO contextJoin = getContextJoin(contextJoinGetDTO);
        if (contextJoin != null) {
            return contextJoin;
        } else {
            return contextJoinDAOService.createContextJoin(contextJoinCreateDTO);
        }
    }

    @Override
    public ContextJoinDTO updateJoinContext(ContextJoinUpdateDTO contextJoinUpdateDTO) {
        return contextJoinDAOService.updateContextJoin(contextJoinUpdateDTO);
    }
}
