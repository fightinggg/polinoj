package com.oj.bizpolinoj.service.atom.impl;

import com.oj.commonpolinoj.enums.SubmitStatus;
import com.oj.dalpolinoj.service.SubmitDAOService;
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
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProblemServiceImpl implements ProblemService {

    @Autowired
    HduOjSalService hduOjSalService;

    @Autowired
    ProblemDAOService problemDAOService;

    @Autowired
    SubmitDAOService submitDAOService;


    public ProblemDTO getProblem(ProblemGetDTO problemGetDTO) {
        return problemDAOService.getProblem(problemGetDTO);
    }

    @Override
    public ProblemDTO createProblem(ProblemCreateDTO problemCreateDTO) {
        return problemDAOService.createProblem(problemCreateDTO);
    }

    @Override
    public SubmitDTO submitProblem(ProblemSubmitDTO problemSubmitDTO) {
        ProblemGetDTO problemGetDTO = new ProblemGetDTO();
        problemGetDTO.setProblemId(problemSubmitDTO.getProblemId());
        ProblemDTO problem = getProblem(problemGetDTO);
        if (OjName.HDU_NAME.equals(problem.getSource())) {
            SubmitDTO submitDTO = hduOjSalService.submitCode(problemSubmitDTO.getCode(),
                    problem.getSourceId());
            submitDTO.setProblemId(problemSubmitDTO.getProblemId());
            submitDTO.setCode(problemSubmitDTO.getCode());
            submitDTO.setUserId(problemSubmitDTO.getUserId());
            return submitDAOService.createSubmitResultDTO(submitDTO);
        } else {
            throw OJException.buildOJException(OJErrorCode.UN_SUPPORT_ERROR);
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public PageResult<SubmitDTO> getProblemSubmitResult(SubmitPageDTO submitPageDTO) {
        if (OjName.HDU_NAME.equals(submitPageDTO.getSource())) {

            PageResult<SubmitDTO> submitDTOPageResult = submitDAOService.pageSubmit(submitPageDTO);
            for (int i = 0; i < submitDTOPageResult.getList().size(); i++) {
                SubmitDTO submitDTO = submitDTOPageResult.getList().get(i);
                if (SubmitStatus.PENDING.getCode().equals(submitDTO.getStatus())) {
                    SubmitDTO newStatus = hduOjSalService.getSubmitById(submitDTO.getSourceSubmitId());
                    SubmitDTO oldStatus = submitDAOService.getSubmitBySubmitId(submitDTO.getSourceSubmitId());
                    newStatus.setId(oldStatus.getId());
                    if (!SubmitStatus.PENDING.getCode().equals(newStatus.getStatus())) {
                        newStatus = submitDAOService.updateSubmit(newStatus);
                        submitDTOPageResult.getList().set(i, newStatus);
                    }
                }
            }

            return submitDTOPageResult;
        } else {
            throw OJException.buildOJException(OJErrorCode.UN_SUPPORT_ERROR);
        }
    }

    @Override
    public PageResult<ProblemDTO> pageProblem(ProblemPageDTO problemPageDTO) {
        return problemDAOService.pageProblem(problemPageDTO);
    }

    @Override
    public PageResult<RemoteProblemDTO> getRemoteProblem(ProblemRemotePageDTO problemRemotePageDTO) {
        if (OjName.HDU_NAME.equals(problemRemotePageDTO.getSource())) {
            PageResult<RemoteProblemDTO> result = hduOjSalService.pageProblem(problemRemotePageDTO);
            return result;
        } else {
            throw OJException.buildOJException(OJErrorCode.UN_SUPPORT_ERROR);
        }
    }
}
