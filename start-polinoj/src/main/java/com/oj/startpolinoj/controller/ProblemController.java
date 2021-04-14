package com.oj.startpolinoj.controller;

import com.oj.bizpolinoj.service.biz.ProblemBizService;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.startpolinoj.vo.*;
import com.oj.startpolinoj.convert.ProblemConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/problem")
public class ProblemController {

    @Autowired
    ProblemBizService problemBizService;


    @GetMapping
    ProblemVO getProblem(@RequestParam Long problemId) {
        ProblemGetVO problemGetVO = new ProblemGetVO();
        problemGetVO.setProblemId(problemId);
        ProblemGetDTO problemGetDTO = ProblemConverter.toProblemGetDTO(problemGetVO);
        ProblemDTO problem = problemBizService.getProblem(problemGetDTO);
        return ProblemConverter.toProblemVO(problem);
    }

    @PostMapping("/page")
    PageResult<ProblemVO> pageProblem(@RequestBody ProblemPageVO problemPageVO) {
        if (problemPageVO == null) {
            problemPageVO = new ProblemPageVO();
        }
        ProblemPageDTO toProblemPageDTO = ProblemConverter.toProblemPageDTO(problemPageVO);
        PageResult<ProblemDTO> problem = problemBizService.pageProblem(toProblemPageDTO);
        return ProblemConverter.toProblemPageVO(problem);
    }

    @PostMapping
    ProblemVO createProblem(@RequestBody ProblemCreateVO problemCreateVO) {
        ProblemCreateDTO problemCreateDTO = ProblemConverter.toProblemCreateDTO(problemCreateVO);
        ProblemDTO problem = problemBizService.createProblem(problemCreateDTO);
        return ProblemConverter.toProblemVO(problem);
    }

    @PostMapping("/submit")
    SubmitDTO submitProblem(@RequestBody ProblemSubmitVO problemSubmitVO) {
        ProblemSubmitDTO problemSubmitDTO = ProblemConverter.toProblemSubmitDTO(problemSubmitVO);
        return problemBizService.submitProblem(problemSubmitDTO);
    }


    @GetMapping("/status")
    PageResult<SubmitVO> getProblemSubmitResult(SubmitPageVO submitPageVO) {
        SubmitPageDTO submitPageDTO = ProblemConverter.toSubmitResultGetDTO(submitPageVO);
        PageResult<SubmitDTO> submitResultDTOs = problemBizService.getProblemSubmitResult(submitPageDTO);
        return ProblemConverter.toSubmitResultVOPage(submitResultDTOs);
    }


    @PostMapping("/pull")
    ProblemVO pullProblem(@RequestBody ProblemPullVO problemPullVO) {
        ProblemPullDTO problemPullDTO = ProblemConverter.toProblemPullDTO(problemPullVO);
        ProblemDTO problemDTO = problemBizService.pullProblem(problemPullDTO);
        return ProblemConverter.toProblemVO(problemDTO);
    }


    @PostMapping("/remote")
    PageResult<ProblemVO> remoteProblem(@RequestBody ProblemRemotePageVO problemRemotePageVO){
        ProblemRemotePageDTO problemRemotePageDTO = ProblemConverter.toProblemRemotePageDTO(problemRemotePageVO);
        PageResult<ProblemDTO> remoteProblem = problemBizService.getRemoteProblem(problemRemotePageDTO);
        return ProblemConverter.toProblemPageVO(remoteProblem);
    }
}
