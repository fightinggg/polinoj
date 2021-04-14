package com.oj.dalpolinoj.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.ProblemDTO;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.commonpolinoj.dto.SubmitGetDTO;
import com.oj.commonpolinoj.dto.SubmitPageDTO;
import com.oj.dalpolinoj.converter.ProblemConverter;
import com.oj.dalpolinoj.converter.SubmitConverter;
import com.oj.dalpolinoj.domin.Submit;
import com.oj.dalpolinoj.mapper.SubmitMapper;
import com.oj.dalpolinoj.service.SubmitDAOService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class SubmitDAOServiceImpl implements SubmitDAOService {

    @Autowired
    SubmitMapper submitMapper;


    @Override
    public SubmitDTO createSubmitResultDTO(SubmitDTO submitDTO) {
        Submit submit = SubmitConverter.toSubmitDO(submitDTO);
        submitMapper.insert(submit);
        return SubmitConverter.toSubmitDTO(submit);
    }

    @Override
    public PageResult<SubmitDTO> pageSubmit(SubmitPageDTO submitPageDTO) {
        QueryWrapper<Submit> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(submitPageDTO.getProblemId() != null,
                "problem_id",
                submitPageDTO.getProblemId());

        queryWrapper.orderByDesc("id");

        Page<Submit> tPage = new Page<>(submitPageDTO.getPageIndex(), submitPageDTO.getPageSize());
        Page<Submit> problemPage = submitMapper.selectPage(tPage, queryWrapper);
        List<SubmitDTO> problemDTOS = SubmitConverter.toSubmitDTOList(problemPage.getRecords());

        PageResult<SubmitDTO> problemDTOPageResult = new PageResult<>();
        problemDTOPageResult.setList(problemDTOS);
        problemDTOPageResult.setPageIndex(submitPageDTO.getPageIndex());
        problemDTOPageResult.setPageSize(submitPageDTO.getPageSize());
        return problemDTOPageResult;
    }

    @Override
    public SubmitDTO updateSubmit(SubmitDTO submitDTO) {
        if (submitDTO.getId() == null) {
            log.error("submitDTO.getId == null ");
            throw OJException.buildOJException(OJErrorCode.UNKNOWN_ERROR);
        }
        Submit submit = SubmitConverter.toSubmitDO(submitDTO);
        submitMapper.updateById(submit);
        return SubmitConverter.toSubmitDTO(submit);
    }

    @Override
    public SubmitDTO getSubmitBySubmitId(String submitId) {
        QueryWrapper<Submit> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("source_submit_id", submitId);
        Submit submit = submitMapper.selectOne(queryWrapper);
        return SubmitConverter.toSubmitDTO(submit);
    }


    @Override
    public SubmitDTO getSubmitDTO(SubmitGetDTO submitGetDTO) {
        QueryWrapper<Submit> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id",submitGetDTO.getId());

        Submit submit = submitMapper.selectOne(queryWrapper);

        return SubmitConverter.toSubmitDTO(submit);
    }

}
