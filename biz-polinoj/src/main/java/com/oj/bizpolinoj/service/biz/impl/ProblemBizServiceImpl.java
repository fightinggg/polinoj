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


    @Override
    public ProblemDTO getProblem(ProblemGetDTO problemGetDTO) {
        ProblemDTO problem = problemService.getProblem(problemGetDTO);

        SampleGetDTO sampleGetDTO = new SampleGetDTO();
        sampleGetDTO.setProblemId(problemGetDTO.getProblemId());
        List<SampleDTO> sampleDTOS = sampleService.listSampleDTO(sampleGetDTO);
        problem.setSampleDTOList(sampleDTOS);

        return problem;
    }

    @Override
    public PageResult<ProblemDTO> getRemoteProblem(ProblemRemotePageDTO problemRemotePageDTO){
        if (problemRemotePageDTO.getPageIndex() == null) {
            problemRemotePageDTO.setPageIndex(1);
        }
        if (problemRemotePageDTO.getPageSize() == null) {
            problemRemotePageDTO.setPageSize(10);
        }
        return problemService.getRemoteProblem(problemRemotePageDTO);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public ProblemDTO createProblem(ProblemCreateDTO problemCreateDTO) {

        ProblemDTO problem = problemService.createProblem(problemCreateDTO);

        List<SampleCreateDTO> sampleCreateDTOS = problemCreateDTO.getSampleDTOList()
                .stream()
                .map(o -> {
                    SampleCreateDTO sampleCreateDTO = new SampleCreateDTO();
                    sampleCreateDTO.setProblemId(problem.getProblemId());
                    sampleCreateDTO.setInput(o.getInput());
                    sampleCreateDTO.setOutput(o.getOutput());
                    return sampleCreateDTO;
                })
                .collect(Collectors.toList());

        List<SampleDTO> sampleDTOS = new ArrayList<>();

        for (SampleCreateDTO sampleCreateDTO : sampleCreateDTOS) {
            SampleDTO sample = sampleService.createSample(sampleCreateDTO);
            sampleDTOS.add(sample);
        }

        problem.setSampleDTOList(sampleDTOS);

        return problem;
    }


    @Override
    public SubmitDTO submitProblem(ProblemSubmitDTO problemSubmitDTO) {
        return problemService.submitProblem(problemSubmitDTO);
    }

    @Override
    public PageResult<SubmitDTO> getProblemSubmitResult(SubmitPageDTO submitPageDTO) {
        if (submitPageDTO.getPageIndex() == null) {
            submitPageDTO.setPageIndex(1);
        }
        if (submitPageDTO.getPageSize() == null) {
            submitPageDTO.setPageSize(10);
        }
        return problemService.getProblemSubmitResult(submitPageDTO);
    }

    @Override
    public ProblemDTO pullProblem(ProblemPullDTO problemPullDTO) {
        if (OjName.HDU_NAME.equals(problemPullDTO.getSource())) {
            ProblemDTO problem = hduOjSalService.getProblem(problemPullDTO.getSourceId());
            ProblemCreateDTO problemCreateDTO = ProblemConverter.toProblemCreateDTO(problem);
            return createProblem(problemCreateDTO);
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
        PageResult<ProblemDTO> problemDTOPageResult = problemService.pageProblem(problemPageDTO);
        problemDTOPageResult.getList().forEach(o->{
            SampleGetDTO sampleGetDTO = new SampleGetDTO();
            sampleGetDTO.setProblemId(o.getProblemId());
            List<SampleDTO> sampleDTOS = sampleService.listSampleDTO(sampleGetDTO);
            o.setSampleDTOList(sampleDTOS);
        });

        return problemDTOPageResult;
    }
}
