package com.oj.startpolinoj.controller;

import com.oj.bizpolinoj.service.biz.SubmitBizService;
import com.oj.commonpolinoj.HttpResult;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.startpolinoj.convert.ProblemConverter;
import com.oj.startpolinoj.convert.SubmitConverter;
import com.oj.startpolinoj.vo.ProblemSubmitVO;
import com.oj.startpolinoj.vo.SubmitPageVO;
import com.oj.startpolinoj.vo.SubmitVO;
import com.taptap.ratelimiter.annotation.RateLimit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

import static com.oj.commonpolinoj.consts.SessionNameConsts.UserSessionName;

@RestController
@RequestMapping("/api/submit")
public class SubmitController {
    @Autowired
    SubmitBizService submitBizService;


    @GetMapping
    SubmitVO getSubmit(Long id) {
        SubmitGetDTO submitGetDTO = new SubmitGetDTO();
        submitGetDTO.setId(id);
        SubmitDTO submitDTO = submitBizService.getSubmitDTO(submitGetDTO);
        return SubmitConverter.toSubmitVO(submitDTO);
    }


    @PostMapping
    @RateLimit(rate = 1, rateInterval = "60s", rateExpression = "${spring.ratelimiter.permin.submit.max}", customKeyFunction = "getSubmitProblemKey")
    HttpResult<SubmitDTO> submitProblem(@RequestBody ProblemSubmitVO problemSubmitVO, HttpServletRequest httpServletRequest) {
        UserDTO userDTO = (UserDTO) httpServletRequest.getSession().getAttribute(UserSessionName);
        ProblemSubmitDTO problemSubmitDTO = ProblemConverter.toProblemSubmitDTO(problemSubmitVO);
        problemSubmitDTO.setUserId(userDTO.getId());
        SubmitDTO submitDTO = submitBizService.submitProblem(problemSubmitDTO);
        return HttpResult.success(submitDTO);
    }

    public String getSubmitProblemKey(ProblemSubmitVO problemSubmitVO, HttpServletRequest httpServletRequest) {
        UserDTO userDTO = (UserDTO) httpServletRequest.getSession().getAttribute(UserSessionName);
        return String.valueOf(userDTO.getId());
    }


    @GetMapping("/status")
    HttpResult<PageResult<SubmitVO>> pageSubmit(SubmitPageVO submitPageVO) {
        SubmitPageDTO submitPageDTO = ProblemConverter.toSubmitResultGetDTO(submitPageVO);
        PageResult<SubmitDTO> submitResultDTOs = submitBizService.getProblemSubmitResult(submitPageDTO);
        PageResult<SubmitVO> submitVOPageResult = SubmitConverter.toSubmitResultVOPage(submitResultDTOs);
        return HttpResult.success(submitVOPageResult);
    }

}
