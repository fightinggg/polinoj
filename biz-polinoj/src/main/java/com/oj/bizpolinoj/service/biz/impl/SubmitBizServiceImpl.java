package com.oj.bizpolinoj.service.biz.impl;

import com.oj.bizpolinoj.service.atom.ProblemService;
import com.oj.bizpolinoj.service.atom.UserService;
import com.oj.bizpolinoj.service.biz.SubmitBizService;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.commonpolinoj.enums.OjName;
import com.oj.commonpolinoj.enums.SubmitStatus;
import com.oj.dalpolinoj.service.SubmitDAOService;
import com.oj.salpolinoj.service.HduOjSalService;
import com.oj.salpolinoj.service.PolinOjSandboxSalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubmitBizServiceImpl implements SubmitBizService {

    @Autowired
    SubmitDAOService submitService;

    @Autowired
    ProblemService problemService;

    @Autowired
    UserService userService;
    @Autowired
    HduOjSalService hduOjSalService;
    @Autowired
    PolinOjSandboxSalService polinOjSandboxSalService;


    @Override
    public SubmitDTO getSubmitDTO(SubmitGetDTO submitGetDTO) {
        SubmitDTO submitDTO = submitService.getSubmitDTO(submitGetDTO);
        if (SubmitStatus.PENDING.getCode().equals(submitDTO.getStatus()) ||
                SubmitStatus.PROCESS.getCode().equals(submitDTO.getStatus())) {
            final Long problemId = submitDTO.getProblemId();
            ProblemGetDTO problemGetDTO = new ProblemGetDTO();
            problemGetDTO.setProblemId(problemId);
            final ProblemDTO problem = problemService.getProblem(problemGetDTO);
            if (OjName.HDU_NAME.equals(problem.getSource())) {
                SubmitDTO newStatus = hduOjSalService.getSubmitById(submitDTO.getSourceSubmitId());
                SubmitDTO oldStatus = submitService.getSubmitBySubmitId(submitDTO.getSourceSubmitId());
                newStatus.setId(oldStatus.getId());
                newStatus = submitService.updateSubmit(newStatus);
                return newStatus;
            } else if (OjName.POLIN_OJ.equals(problem.getSource())) {
                SubmitDTO newStatus = polinOjSandboxSalService.getStatus(submitDTO.getSourceSubmitId());
                SubmitDTO oldStatus = submitService.getSubmitBySubmitId(submitDTO.getSourceSubmitId());
                newStatus.setId(oldStatus.getId());
                newStatus = submitService.updateSubmit(newStatus);
                return newStatus;
            }
        }
        return submitDTO;
    }

    @Override
    public SubmitDTO submitProblem(ProblemSubmitDTO problemSubmitDTO) {
        if (problemSubmitDTO.getCode().length() < 50) {
            throw OJException.buildOJException(OJErrorCode.SUBMIT_CODE_TOO_SHORT);
        }
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

        PageResult<SubmitDTO> problemSubmitResult = problemService.getProblemSubmitResult(submitPageDTO);

        problemSubmitResult.getList().forEach(o -> {
            UserGetDTO userGetDTO = new UserGetDTO();
            userGetDTO.setId(o.getUserId());
            UserDTO user = userService.getUser(userGetDTO);
            o.setUserName(user.getUsername());
        });

        return problemSubmitResult;
    }
}
