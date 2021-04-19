package com.oj.bizpolinoj.service.biz.impl;

import com.oj.bizpolinoj.service.atom.ContextService;
import com.oj.bizpolinoj.service.biz.ContextBizService;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContextBizServiceImpl implements ContextBizService {
    @Autowired
    ContextService contextService;

    @Override
    public ContextDTO createContext(ContextCreateDTO createDTO) {
        return contextService.createContext(createDTO);
    }

    @Override
    public ContextDTO updateContext(ContextUpdateDTO updateDTO) {
        return contextService.updateContext(updateDTO);
    }

    @Override
    public ContextDTO getContext(ContextGetDTO contextGetDTO) {
        return contextService.getContext(contextGetDTO);
    }

    @Override
    public PageResult<ContextDTO> pageContext(ContextPageDTO pageDTO) {
        return contextService.pageContext(pageDTO);
    }
}
