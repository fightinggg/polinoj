package com.oj.dalpolinoj.service;

import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;

public interface ContextDAOService {
    ContextDTO createContext(ContextCreateDTO createDTO);

    ContextDTO updateContext(ContextUpdateDTO updateDTO);

    ContextDTO getContext(ContextGetDTO contextGetDTO);

    PageResult<ContextDTO> pageContext(ContextPageDTO pageDTO);
}
