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
    SubmitVO getSubmit(String id) {
        SubmitGetDTO submitGetDTO = new SubmitGetDTO();
        submitGetDTO.setId(id);
        SubmitDTO submitDTO = submitBizService.getSubmitDTO(submitGetDTO);
        return SubmitConverter.toSubmitVO(submitDTO);
    }


    @PostMapping
    HttpResult<SubmitDTO> submitProblem(@RequestBody ProblemSubmitVO problemSubmitVO, HttpServletRequest httpServletRequest) {
        UserDTO userDTO = (UserDTO) httpServletRequest.getSession().getAttribute(UserSessionName);
        ProblemSubmitDTO problemSubmitDTO = ProblemConverter.toProblemSubmitDTO(problemSubmitVO);
        problemSubmitDTO.setUserId(userDTO.getId());
        SubmitDTO submitDTO = submitBizService.submitProblem(problemSubmitDTO);
        return HttpResult.success(submitDTO);
    }


    @GetMapping("/status")
    HttpResult<PageResult<SubmitVO>> getProblemSubmitResult(SubmitPageVO submitPageVO) {
        SubmitPageDTO submitPageDTO = ProblemConverter.toSubmitResultGetDTO(submitPageVO);
        PageResult<SubmitDTO> submitResultDTOs = submitBizService.getProblemSubmitResult(submitPageDTO);
        PageResult<SubmitVO> submitVOPageResult = ProblemConverter.toSubmitResultVOPage(submitResultDTOs);
        return HttpResult.success(submitVOPageResult);
    }

}
