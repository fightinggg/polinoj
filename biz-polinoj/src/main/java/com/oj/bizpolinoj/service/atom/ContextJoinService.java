package com.oj.bizpolinoj.service.atom;

import com.oj.commonpolinoj.dto.ContextJoinCreateDTO;
import com.oj.commonpolinoj.dto.ContextJoinDTO;
import com.oj.commonpolinoj.dto.ContextJoinGetDTO;
import com.oj.commonpolinoj.dto.ContextJoinUpdateDTO;

public interface ContextJoinService {
    ContextJoinDTO getContextJoin(ContextJoinGetDTO contextJoinGetDTO);

    ContextJoinDTO createContextJoin(ContextJoinCreateDTO contextJoinCreateDTO);

    ContextJoinDTO updateJoinContext(ContextJoinUpdateDTO contextJoinUpdateDTO);
}
