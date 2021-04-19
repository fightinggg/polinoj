package com.oj.dalpolinoj.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.dalpolinoj.converter.ContextConverter;
import com.oj.dalpolinoj.domin.Context;
import com.oj.dalpolinoj.domin.ContextProblem;
import com.oj.dalpolinoj.mapper.ContextMapper;
import com.oj.dalpolinoj.mapper.ContextProblemMapper;
import com.oj.dalpolinoj.service.ContextDAOService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ContextDAOServiceImpl implements ContextDAOService {

    @Autowired
    ContextMapper contextMapper;

    @Autowired
    ContextProblemMapper contextProblemMapper;

    @Override
    @Transactional
    public ContextDTO createContext(ContextCreateDTO createDTO) {
        Context context = ContextConverter.toDO(createDTO);
        int insert = contextMapper.insert(context);
        if (insert == 0) {
            throw OJException.buildOJException(OJErrorCode.UNKNOWN_ERROR);
        }
        ContextDTO contextDTO = ContextConverter.toDTO(context);

        for (Long id : createDTO.getProblemId()) {
            ContextProblem contextProblem = new ContextProblem();
            contextProblem.setProblemId(context.getId());
            contextProblem.setContextId(id);

            contextProblemMapper.insert(contextProblem);
        }

        contextDTO.setProblemId(createDTO.getProblemId());

        return contextDTO;

    }

    @Override
    @Transactional
    public ContextDTO updateContext(ContextUpdateDTO updateDTO) {
        Context context = ContextConverter.toDO(updateDTO);
        contextMapper.updateById(context);
        return ContextConverter.toDTO(context);
    }

    @Override
    public ContextDTO getContext(ContextGetDTO contextGetDTO) {
        QueryWrapper<Context> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(contextGetDTO.getId() != null, "id", contextGetDTO.getId());
        Context context = contextMapper.selectOne(queryWrapper);
        return ContextConverter.toDTO(context);
    }

    @Override
    public PageResult<ContextDTO> pageContext(ContextPageDTO pageDTO) {
        QueryWrapper<Context> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(pageDTO.getOwnerId() != null, "owner_id", pageDTO.getOwnerId());

        Page<Context> page = new Page<>(pageDTO.getPageIndex(), pageDTO.getPageSize());
        Page<Context> contextPage = contextMapper.selectPage(page, queryWrapper);

        PageResult<Context> pageResult = new PageResult<>();

        pageResult.setTotal((int) contextPage.getTotal());
        pageResult.setList(contextPage.getRecords());
        pageResult.setPageIndex((int) contextPage.getCurrent());
        pageResult.setPageSize((int) contextPage.getSize());

        return ContextConverter.toPageDTO(pageResult);
    }
}
