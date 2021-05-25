package com.oj.bizpolinoj.service.atom.impl;

import com.oj.commonpolinoj.consts.MinioConsts;
import com.oj.commonpolinoj.enums.SubmitStatus;
import com.oj.dalpolinoj.service.SubmitDAOService;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.bizpolinoj.service.atom.ProblemService;
import com.oj.commonpolinoj.enums.OjName;
import com.oj.dalpolinoj.service.ProblemDAOService;
import com.oj.polinojsandbox.openapi.SubmitCodeMessage;
import com.oj.salpolinoj.service.HduOjSalService;
import com.oj.salpolinoj.service.PolinOjSandboxSalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Base64Utils;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class ProblemServiceImpl implements ProblemService {

    @Autowired
    HduOjSalService hduOjSalService;

    @Autowired
    PolinOjSandboxSalService polinOjSandboxSalService;

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
        } else if (OjName.POLIN_OJ.equals(problem.getSource())) {
            SubmitDTO submitDTO = new SubmitDTO();
            submitDTO.setProblemId(problemSubmitDTO.getProblemId());
            submitDTO.setCode(problemSubmitDTO.getCode());
            submitDTO.setUserId(problemSubmitDTO.getUserId());
            submitDTO.setRunInfo("[]");
            final SubmitDTO submitResultDTO = submitDAOService.createSubmitResultDTO(submitDTO);

            SubmitCodeMessage submitCodeMessage = new SubmitCodeMessage();
            // TODO 默认编译时间为20秒
            submitCodeMessage.setCcTimes(20L);
            submitCodeMessage.setCode(Base64Utils.encodeToString(problemSubmitDTO.getCode().getBytes()));
            String path = MinioConsts.samplePath + "/" + problemSubmitDTO.getProblemId() + ".zip";
            submitCodeMessage.setCosPath(path);
            submitCodeMessage.setMemory(problem.getMemory());
            submitCodeMessage.setProblemId(problem.getId());
            submitCodeMessage.setRunTimes(problem.getTime());
            submitCodeMessage.setSubmitId(submitResultDTO.getId());
            // TODO 不支持md5
            submitCodeMessage.setSamplesMD5("1");

            polinOjSandboxSalService.submitCode(submitCodeMessage);

            return submitResultDTO;
        } else {
            throw OJException.buildOJException(OJErrorCode.UN_SUPPORT_ERROR);
        }
    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    public PageResult<SubmitDTO> getProblemSubmitResult(SubmitPageDTO submitPageDTO) {
        PageResult<SubmitDTO> submitDTOPageResult = submitDAOService.pageSubmit(submitPageDTO);
        final List<SubmitDTO> submitDTOS = submitDTOPageResult.getList();

        for (int i = 0; i < submitDTOS.size(); i++) {
            SubmitDTO submitDTO = submitDTOS.get(i);
            if (SubmitStatus.PENDING.getCode().equals(submitDTO.getStatus()) ||
                    SubmitStatus.PROCESS.getCode().equals(submitDTO.getStatus())) {
                final Long problemId = submitDTO.getProblemId();
                ProblemGetDTO problemGetDTO = new ProblemGetDTO();
                problemGetDTO.setProblemId(problemId);
                final ProblemDTO problem = problemDAOService.getProblem(problemGetDTO);
                if (OjName.HDU_NAME.equals(problem.getSource())) {
                    SubmitDTO newStatus = hduOjSalService.getSubmitById(submitDTO.getSourceSubmitId());
                    SubmitDTO oldStatus = submitDAOService.getSubmitBySubmitId(submitDTO.getSourceSubmitId());
                    newStatus.setId(oldStatus.getId());
                    newStatus = submitDAOService.updateSubmit(newStatus);
                    submitDTOS.set(i, newStatus);
                }
            }
        }

        return submitDTOPageResult;
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
