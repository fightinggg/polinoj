package com.oj.bizpolinoj.service.biz.impl;

import com.oj.bizpolinoj.service.atom.ContextService;
import com.oj.bizpolinoj.service.atom.UserService;
import com.oj.bizpolinoj.service.biz.ContextBizService;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.dalpolinoj.domin.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContextBizServiceImpl implements ContextBizService {
    @Autowired
    ContextService contextService;
    @Autowired
    UserService userService;

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
        if (pageDTO.getPageIndex() == null) {
            pageDTO.setPageIndex(1L);
        }
        if (pageDTO.getPageSize() == null) {
            pageDTO.setPageSize(10L);
        }
        PageResult<ContextDTO> pageResult = contextService.pageContext(pageDTO);
        List<ContextDTO> list = pageResult.getList();
        for (int i = 0; i < list.size(); i++) {
            UserGetDTO userGetDTO = new UserGetDTO();
            userGetDTO.setId(list.get(i).getOwnerId());
            UserDTO user = userService.getUser(userGetDTO);
            list.get(i).setOwnerName(user.getUsername());
        }
        return pageResult;
    }
}
