package com.oj.startpolinoj.controller;

import com.oj.bizpolinoj.service.biz.ProblemBizService;
import com.oj.commonpolinoj.HttpResult;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.startpolinoj.convert.RemoteProblemConverter;
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
    HttpResult<PageResult<ProblemVO>> pageProblem(@RequestBody ProblemPageVO problemPageVO) {
        if (problemPageVO == null) {
            problemPageVO = new ProblemPageVO();
        }
        ProblemPageDTO toProblemPageDTO = ProblemConverter.toProblemPageDTO(problemPageVO);
        PageResult<ProblemDTO> problem = problemBizService.pageProblem(toProblemPageDTO);
        PageResult<ProblemVO> problemVOPageResult = ProblemConverter.toProblemPageVO(problem);
        return HttpResult.success(problemVOPageResult);
    }

    @PostMapping
    HttpResult<ProblemVO> createProblem(@RequestBody ProblemCreateVO problemCreateVO) {
        ProblemCreateDTO problemCreateDTO = ProblemConverter.toProblemCreateDTO(problemCreateVO);
        ProblemDTO problem = problemBizService.createProblem(problemCreateDTO);
        final ProblemVO problemVO = ProblemConverter.toProblemVO(problem);
        return HttpResult.success(problemVO);
    }


    @PostMapping("/pull")
    HttpResult<ProblemVO> pullProblem(@RequestBody ProblemPullVO problemPullVO) {
        ProblemPullDTO problemPullDTO = ProblemConverter.toProblemPullDTO(problemPullVO);
        ProblemDTO problemDTO = problemBizService.pullProblem(problemPullDTO);
        ProblemVO problemVO = ProblemConverter.toProblemVO(problemDTO);
        return HttpResult.success(problemVO);
    }


    @PostMapping("/remote")
    PageResult<RemoteProblemVO> pageRemoteProblem(@RequestBody ProblemRemotePageVO problemRemotePageVO) {
        ProblemRemotePageDTO problemRemotePageDTO = ProblemConverter.toProblemRemotePageDTO(problemRemotePageVO);
        PageResult<RemoteProblemDTO> remoteProblem = problemBizService.getRemoteProblem(problemRemotePageDTO);
        return RemoteProblemConverter.toProblemPageVO(remoteProblem);
    }
}
