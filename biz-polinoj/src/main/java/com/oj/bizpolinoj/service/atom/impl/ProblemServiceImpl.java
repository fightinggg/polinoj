package com.oj.bizpolinoj.service.atom.impl;

import com.oj.bizpolinoj.converter.ProblemConverter;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.bizpolinoj.service.atom.ProblemService;
import com.oj.commonpolinoj.enums.OjName;
import com.oj.dalpolinoj.service.ProblemDAOService;
import com.oj.salpolinoj.service.HduOjSalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProblemServiceImpl implements ProblemService {

    @Autowired
    HduOjSalService hduOjSalService;

    @Autowired
    ProblemDAOService problemDAOService;


    public ProblemDTO getProblem(ProblemGetDTO problemGetDTO) {
        return problemDAOService.getProblem(problemGetDTO);
    }

    @Override
    public ProblemDTO createProblem(ProblemCreateDTO problemCreateDTO) {
        return problemDAOService.createProblem(problemCreateDTO);
    }

    @Override
    public Boolean submitProblem(ProblemSubmitDTO problemSubmitDTO) {
        if (OjName.HDU_NAME.equals(problemSubmitDTO.getSource())) {
            return hduOjSalService.submitCode(
                    problemSubmitDTO.getCode(),
                    problemSubmitDTO.getProblemId());
        } else {
            throw OJException.buildOJException(OJErrorCode.UN_SUPPORT_ERROR);
        }
    }

    @Override
    public PageResult<SubmitResultDTO> getProblemSubmitResult(SubmitResultGetDTO submitResultGetDTO) {
        if (OjName.HDU_NAME.equals(submitResultGetDTO.getSource())) {
            List<SubmitResultDTO> problemSubmitResult =
                    hduOjSalService.getProblemSubmitResult(submitResultGetDTO.getProblemId());
            PageResult<SubmitResultDTO> submitResultDTOPageResult = new PageResult<>();
            submitResultDTOPageResult.setList(problemSubmitResult);
            submitResultDTOPageResult.setPageIndex(1);
            submitResultDTOPageResult.setPageSize(10);
            submitResultDTOPageResult.setTotal(1000);
            return submitResultDTOPageResult;
        } else {
            throw OJException.buildOJException(OJErrorCode.UN_SUPPORT_ERROR);
        }
    }

    @Override
    public PageResult<ProblemDTO> pageProblem(ProblemPageDTO problemPageDTO) {
        return problemDAOService.pageProblem(problemPageDTO);
    }
}
