package com.oj.startpolinoj.controller;

import com.oj.bizpolinoj.service.biz.ProblemBizService;
import com.oj.commonpolinoj.HttpResult;
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
    HttpResult<ProblemVO> getProblem(@RequestParam Long problemId) {
        ProblemGetVO problemGetVO = new ProblemGetVO();
        problemGetVO.setProblemId(problemId);
        ProblemGetDTO problemGetDTO = ProblemConverter.toProblemGetDTO(problemGetVO);
        ProblemDTO problem = problemBizService.getProblem(problemGetDTO);
        ProblemVO problemVO = ProblemConverter.toProblemVO(problem);
        return HttpResult.success(problemVO);
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


    @PostMapping("/pull")
    ProblemVO pullProblem(@RequestBody ProblemPullVO problemPullVO) {
        ProblemPullDTO problemPullDTO = ProblemConverter.toProblemPullDTO(problemPullVO);
        ProblemDTO problemDTO = problemBizService.pullProblem(problemPullDTO);
        return ProblemConverter.toProblemVO(problemDTO);
    }


    @PostMapping("/remote")
    PageResult<ProblemVO> remoteProblem(@RequestBody ProblemRemotePageVO problemRemotePageVO) {
        ProblemRemotePageDTO problemRemotePageDTO = ProblemConverter.toProblemRemotePageDTO(problemRemotePageVO);
        PageResult<ProblemDTO> remoteProblem = problemBizService.getRemoteProblem(problemRemotePageDTO);
        return ProblemConverter.toProblemPageVO(remoteProblem);
    }
}
