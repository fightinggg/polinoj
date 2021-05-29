package com.oj.dalpolinoj.service;

import com.oj.commonpolinoj.dto.ContextJoinCreateDTO;
import com.oj.commonpolinoj.dto.ContextJoinDTO;
import com.oj.commonpolinoj.dto.ContextJoinGetDTO;
import com.oj.commonpolinoj.dto.ContextJoinUpdateDTO;

public interface ContextJoinDAOService {
    ContextJoinDTO getContextJoin(ContextJoinGetDTO contextJoinGetDTO);

    ContextJoinDTO createContextJoin(ContextJoinCreateDTO contextJoinCreateDTO);

    ContextJoinDTO updateContextJoin(ContextJoinUpdateDTO contextJoinUpdateDTO);
}
