package com.oj.dalpolinoj.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.dto.*;
import com.oj.dalpolinoj.converter.ContextJoinConverter;
import com.oj.dalpolinoj.domin.ContextJoin;
import com.oj.dalpolinoj.mapper.ContextJoinMapper;
import com.oj.dalpolinoj.service.ContextJoinDAOService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContextJoinDAOServiceImpl implements ContextJoinDAOService {
    @Autowired
    ContextJoinMapper contextJoinMapper;

    @Override
    public ContextJoinDTO getContextJoin(ContextJoinGetDTO contextJoinGetDTO) {
        QueryWrapper<ContextJoin> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(contextJoinGetDTO.getStar() != null, "star", contextJoinGetDTO.getStar());
        queryWrapper.eq(contextJoinGetDTO.getContextId() != null, "context_id", contextJoinGetDTO.getContextId());
        queryWrapper.eq(contextJoinGetDTO.getId() != null, "id", contextJoinGetDTO.getId());
        queryWrapper.eq(contextJoinGetDTO.getUserId() != null, "user_id", contextJoinGetDTO.getUserId());

        final ContextJoin contextJoin = contextJoinMapper.selectOne(queryWrapper);
        return contextJoin == null ? null : ContextJoinConverter.toContextJoinDTO(contextJoin);
    }

    @Override
    public ContextJoinDTO createContextJoin(ContextJoinCreateDTO contextJoinCreateDTO) {
        ContextJoin contextJoin = ContextJoinConverter.toContextJoinDO(contextJoinCreateDTO);
        contextJoinMapper.insert(contextJoin);
        return ContextJoinConverter.toContextJoinDTO(contextJoin);
    }

    @Override
    public ContextJoinDTO updateContextJoin(ContextJoinUpdateDTO contextJoinUpdateDTO) {
        ContextJoinGetDTO contextJoinGetDTO = new ContextJoinGetDTO();
        contextJoinGetDTO.setContextId(contextJoinUpdateDTO.getContextId());
        contextJoinGetDTO.setUserId(contextJoinUpdateDTO.getUserId());
        final ContextJoinDTO contextJoin = getContextJoin(contextJoinGetDTO);

        if (contextJoin == null) {
            throw OJException.buildOJException(OJErrorCode.NO_JOIN_CONTEXT);
        } else {
            ContextJoin contextJoinDO = ContextJoinConverter.toContextJoinDO(contextJoinUpdateDTO);
            contextJoinDO.setId(contextJoin.getId());
            contextJoinMapper.updateById(contextJoinDO);
            return ContextJoinConverter.toContextJoinDTO(contextJoinDO);
        }
    }
}
