package com.oj.bizpolinoj.service.biz.impl;

import com.oj.bizpolinoj.converter.ProblemConverter;
import com.oj.bizpolinoj.service.atom.ProblemService;
import com.oj.bizpolinoj.service.atom.SampleService;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.bizpolinoj.service.biz.ProblemBizService;
import com.oj.commonpolinoj.enums.OjName;
import com.oj.dalpolinoj.domin.Sample;
import com.oj.salpolinoj.service.HduOjSalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProblemBizServiceImpl implements ProblemBizService {

    @Autowired
    ProblemService problemService;

    @Autowired
    SampleService sampleService;

    @Autowired
    HduOjSalService hduOjSalService;


    public ProblemDTO getProblem(ProblemGetDTO problemGetDTO) {
        ProblemDTO problem = problemService.getProblem(problemGetDTO);

        SampleGetDTO sampleGetDTO = new SampleGetDTO();
        sampleGetDTO.setProblemId(problemGetDTO.getProblemId());
        List<SampleDTO> sampleDTOS = sampleService.listSampleDTO(sampleGetDTO);
        problem.setSampleDTOList(sampleDTOS);

        return problem;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public ProblemDTO createProblem(ProblemCreateDTO problemCreateDTO) {
        return problemService.createProblem(problemCreateDTO);
    }


    @Override
    public Boolean submitProblem(ProblemSubmitDTO problemSubmitDTO) {
        return problemService.submitProblem(problemSubmitDTO);
    }

    @Override
    public PageResult<SubmitResultDTO> getProblemSubmitResult(SubmitResultGetDTO submitResultGetDTO) {
        return problemService.getProblemSubmitResult(submitResultGetDTO);
    }

    @Override
    public ProblemDTO pullProblem(ProblemPullDTO problemPullDTO) {
        if (OjName.HDU_NAME.equals(problemPullDTO.getSource())) {
            ProblemDTO problem = hduOjSalService.getProblem(problemPullDTO.getSourceId());
            ProblemCreateDTO problemCreateDTO = ProblemConverter.toProblemCreateDTO(problem);
            problemService.createProblem(problemCreateDTO);




        } else {
            throw OJException.buildOJException(OJErrorCode.UN_SUPPORT_ERROR);
        }
    }

    @Override
    public PageResult<ProblemDTO> pageProblem(ProblemPageDTO problemPageDTO) {
        if (problemPageDTO.getPageIndex() == null) {
            problemPageDTO.setPageIndex(1L);
        }
        if (problemPageDTO.getPageSize() == null) {
            problemPageDTO.setPageSize(10L);
        }
        return problemService.pageProblem(problemPageDTO);
    }
}
