package com.oj.bizpolinoj.service.atom.impl;

import com.oj.bizpolinoj.service.atom.ContextService;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.dalpolinoj.service.ContextDAOService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContextServiceImpl implements ContextService {
    @Autowired
    ContextDAOService contextDAOService;

    @Override
    public ContextDTO createContext(ContextCreateDTO createDTO) {
        return contextDAOService.createContext(createDTO);
    }

    @Override
    public ContextDTO updateContext(ContextUpdateDTO updateDTO) {
        return contextDAOService.updateContext(updateDTO);
    }

    @Override
    public ContextDTO getContext(ContextGetDTO contextGetDTO) {
        return contextDAOService.getContext(contextGetDTO);
    }

    @Override
    public PageResult<ContextDTO> pageContext(ContextPageDTO pageDTO) {
        return contextDAOService.pageContext(pageDTO);
    }
}
