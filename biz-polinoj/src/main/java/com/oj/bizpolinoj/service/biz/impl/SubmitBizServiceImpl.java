package com.oj.bizpolinoj.service.biz.impl;

import com.oj.bizpolinoj.converter.SubmitConverter;
import com.oj.bizpolinoj.domain.bo.SubmitBO;
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

import java.util.List;
import java.util.stream.Collectors;

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
    public PageResult<SubmitBO> getProblemSubmitResult(SubmitPageDTO submitPageDTO) {
        if (submitPageDTO.getPageIndex() == null) {
            submitPageDTO.setPageIndex(1);
        }
        if (submitPageDTO.getPageSize() == null) {
            submitPageDTO.setPageSize(10);
        }

        PageResult<SubmitDTO> submitResultPage = problemService.getProblemSubmitResult(submitPageDTO);
        PageResult<SubmitBO> submitBOPageResult = SubmitConverter.toSubmitBOPage(submitResultPage);

        final List<SubmitDTO> listDTO = submitResultPage.getList();
        final List<SubmitBO> listBO = submitBOPageResult.getList();
        for (int i = 0; i < listDTO.size(); i++) {
            UserGetDTO userGetDTO = new UserGetDTO();
            userGetDTO.setId(listDTO.get(i).getUserId());
            UserDTO user = userService.getUser(userGetDTO);
            listBO.get(i).setUserName(user.getUsername());
        }

        return submitBOPageResult;
    }
}
