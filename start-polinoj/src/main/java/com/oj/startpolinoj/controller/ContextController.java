package com.oj.startpolinoj.controller;


import com.oj.bizpolinoj.service.biz.ContextBizService;
import com.oj.commonpolinoj.HttpResult;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.startpolinoj.convert.ContextConverter;
import com.oj.startpolinoj.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import static com.oj.commonpolinoj.consts.SessionNameConsts.UserSessionName;

@RestController
@RequestMapping("/api/context")
public class ContextController {
    @Autowired
    ContextBizService contextBizService;


    @PutMapping
    HttpResult<ContextVO> createContext(@RequestBody ContextCreateVO createVO, HttpServletRequest request) {
        ContextCreateDTO contextCreateDTO = ContextConverter.toDTO(createVO);
        UserDTO userDTO = (UserDTO) request.getSession().getAttribute(UserSessionName);
        contextCreateDTO.setOwnerId(userDTO.getId());

        ContextDTO context = contextBizService.createContext(contextCreateDTO);
        ContextVO contextVO = ContextConverter.toVO(context);
        return HttpResult.success(contextVO);
    }

    @PostMapping
    HttpResult<ContextVO> updateContext(@RequestBody ContextUpdateVO contextUpdateVO) {
        ContextUpdateDTO contextUpdateDTO = ContextConverter.toDTO(contextUpdateVO);
        ContextDTO context = contextBizService.updateContext(contextUpdateDTO);
        ContextVO contextVO = ContextConverter.toVO(context);
        return HttpResult.success(contextVO);

    }

    @GetMapping
    HttpResult<ContextVO> getContext(@RequestParam Long id) {
        ContextGetDTO contextGetDTO = new ContextGetDTO();
        contextGetDTO.setId(id);
        ContextDTO context = contextBizService.getContext(contextGetDTO);
        ContextVO contextVO = ContextConverter.toVO(context);
        return HttpResult.success(contextVO);
    }

    @GetMapping("/rank")
    HttpResult<ContextRankListVO> getContextRankList(@RequestParam Long contextId) {
        ContextRankGetDTO getDTO = new ContextRankGetDTO();
        getDTO.setContextId(contextId);
        final ContextRankListDTO contextRankList = contextBizService.getContextRankList(getDTO);
        ContextRankListVO contextRankVOS = ContextConverter.toContextRankListVO(contextRankList);
        return HttpResult.success(contextRankVOS);
    }


    @PostMapping("/page")
    HttpResult<PageResult<ContextVO>> pageContext(@RequestBody ContextPageVO pageDTO) {
        ContextPageDTO contextPageDTO = ContextConverter.toPageDTO(pageDTO);
        PageResult<ContextDTO> pageResult = contextBizService.pageContext(contextPageDTO);
        PageResult<ContextVO> contextVO = ContextConverter.toPageVO(pageResult);
        return HttpResult.success(contextVO);
    }

}
