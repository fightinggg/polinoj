package com.oj.bizpolinoj.service.biz.impl;

import com.oj.bizpolinoj.converter.ProblemConverter;
import com.oj.bizpolinoj.service.atom.ProblemService;
import com.oj.bizpolinoj.service.atom.SampleService;
import com.oj.bizpolinoj.service.atom.UserService;
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

    @Autowired
    UserService userService;


    @Override
    public ProblemDTO getProblem(ProblemGetDTO problemGetDTO) {
        ProblemDTO problem = problemService.getProblem(problemGetDTO);

        SampleGetDTO sampleGetDTO = new SampleGetDTO();
        sampleGetDTO.setProblemId(problemGetDTO.getProblemId());
        List<SampleDTO> sampleDTOS = sampleService.listSampleDTO(sampleGetDTO);
        problem.setSample(sampleDTOS);

        return problem;
    }

    @Override
    public PageResult<RemoteProblemDTO> getRemoteProblem(ProblemRemotePageDTO problemRemotePageDTO) {
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

        if (problemCreateDTO.getSource() == null) {
            problemCreateDTO.setSource(OjName.POLIN_OJ);
        }
        ProblemDTO problem = problemService.createProblem(problemCreateDTO);

        List<SampleCreateDTO> sampleCreateDTOS = problemCreateDTO.getSample()
                .stream()
                .map(o -> {
                    SampleCreateDTO sampleCreateDTO = new SampleCreateDTO();
                    sampleCreateDTO.setProblemId(problem.getId());
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

        problem.setSample(sampleDTOS);

        return problem;
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
        problemDTOPageResult.getList().forEach(o -> {
            SampleGetDTO sampleGetDTO = new SampleGetDTO();
            sampleGetDTO.setProblemId(o.getId());
            List<SampleDTO> sampleDTOS = sampleService.listSampleDTO(sampleGetDTO);
            o.setSample(sampleDTOS);
        });

        return problemDTOPageResult;
    }
}
