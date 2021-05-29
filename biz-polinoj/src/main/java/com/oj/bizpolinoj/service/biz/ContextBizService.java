package com.oj.bizpolinoj.service.biz;

import com.oj.bizpolinoj.domain.bo.ContextBO;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;

public interface ContextBizService {
    ContextDTO createContext(ContextCreateDTO createDTO);

    ContextDTO updateContext(ContextUpdateDTO updateDTO);

    ContextDTO getContext(ContextGetDTO contextGetDTO);

    PageResult<ContextBO> pageContext(ContextPageDTO pageDTO);

    ContextRankListDTO getContextRankList(ContextRankGetDTO getDTO);

    ContextJoinDTO joinContext(ContextJoinCreateDTO contextJoinCreateDTO);

    ContextJoinDTO updateJoinContext(ContextJoinUpdateDTO contextJoinUpdateDTO);
}
