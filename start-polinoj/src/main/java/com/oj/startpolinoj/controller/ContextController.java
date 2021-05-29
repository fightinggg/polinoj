package com.oj.startpolinoj.controller;


import com.oj.bizpolinoj.domain.bo.ContextBO;
import com.oj.bizpolinoj.service.biz.ContextBizService;
import com.oj.commonpolinoj.HttpResult;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.consts.TimeFormatConsts;
import com.oj.commonpolinoj.dto.*;
import com.oj.startpolinoj.convert.ContextConverter;
import com.oj.startpolinoj.convert.ContextJoinConverter;
import com.oj.startpolinoj.vo.*;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

import static com.oj.commonpolinoj.consts.SessionNameConsts.UserSessionName;

@RestController
@RequestMapping("/api/context")
public class ContextController {
    @Autowired
    ContextBizService contextBizService;

    @PutMapping
    HttpResult<ContextVO> createContext(@RequestBody ContextCreateVO createVO, HttpServletRequest request) {
        ContextCreateDTO contextCreateDTO = ContextConverter.toContextUpdateDTO(createVO);
        UserDTO userDTO = (UserDTO) request.getSession().getAttribute(UserSessionName);
        contextCreateDTO.setOwnerId(userDTO.getId());

        ContextDTO context = contextBizService.createContext(contextCreateDTO);

        ContextVO contextVO = ContextConverter.toContextVO(context);
        contextVO.setBeginTimeString(DateFormatUtils.format(contextVO.getBeginTime(), TimeFormatConsts.FORMAT));
        contextVO.setEndTimeString(DateFormatUtils.format(contextVO.getEndTime(), TimeFormatConsts.FORMAT));
        return HttpResult.success(contextVO);
    }

    @PostMapping
    HttpResult<ContextVO> updateContext(@RequestBody ContextUpdateVO contextUpdateVO) {
        ContextUpdateDTO contextUpdateDTO = ContextConverter.toContextUpdateDTO(contextUpdateVO);
        ContextDTO context = contextBizService.updateContext(contextUpdateDTO);

        ContextVO contextVO = ContextConverter.toContextVO(context);
        contextVO.setBeginTimeString(DateFormatUtils.format(contextVO.getBeginTime(), TimeFormatConsts.FORMAT));
        contextVO.setEndTimeString(DateFormatUtils.format(contextVO.getEndTime(), TimeFormatConsts.FORMAT));
        return HttpResult.success(contextVO);

    }

    @GetMapping
    HttpResult<ContextVO> getContext(@RequestParam Long id,
                                     HttpServletRequest httpServletRequest) {
        UserDTO userDTO = (UserDTO) httpServletRequest.getSession().getAttribute(UserSessionName);
        ContextGetDTO contextGetDTO = new ContextGetDTO();
        contextGetDTO.setId(id);
        contextGetDTO.setOperatorId(userDTO.getId());
        ContextDTO context = contextBizService.getContext(contextGetDTO);

        ContextVO contextVO = ContextConverter.toContextVO(context);
        contextVO.setBeginTimeString(DateFormatUtils.format(contextVO.getBeginTime(), TimeFormatConsts.FORMAT));
        contextVO.setEndTimeString(DateFormatUtils.format(contextVO.getEndTime(), TimeFormatConsts.FORMAT));

        return HttpResult.success(contextVO);
    }

    @PostMapping("/join")
    HttpResult<ContextJoinVO> joinContext(@RequestParam Long contextId,
                                          HttpServletRequest httpServletRequest) {
        UserDTO userDTO = (UserDTO) httpServletRequest.getSession().getAttribute(UserSessionName);

        ContextJoinCreateDTO contextJoinCreateDTO = new ContextJoinCreateDTO();
        contextJoinCreateDTO.setUserId(userDTO.getId());
        contextJoinCreateDTO.setContextId(contextId);

        final ContextJoinDTO contextJoinDTO = contextBizService.joinContext(contextJoinCreateDTO);
        ContextJoinVO contextJoinVO = ContextJoinConverter.toContextJoinVO(contextJoinDTO);
        return HttpResult.success(contextJoinVO);
    }

    @PostMapping("/join/update")
    HttpResult<ContextJoinVO> updateJoinContext(
            @RequestBody ContextJoinUpdateVO contextJoinUpdateVO,
            HttpServletRequest httpServletRequest) {
        ContextJoinUpdateDTO contextJoinUpdateDTO = ContextJoinConverter.toContextJoinDTO(contextJoinUpdateVO);
        UserDTO userDTO = (UserDTO) httpServletRequest.getSession().getAttribute(UserSessionName);
        contextJoinUpdateDTO.setUserId(userDTO.getId());

        final ContextJoinDTO contextJoinDTO = contextBizService.updateJoinContext(contextJoinUpdateDTO);
        ContextJoinVO contextJoinVO = ContextJoinConverter.toContextJoinVO(contextJoinDTO);
        return HttpResult.success(contextJoinVO);
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
    HttpResult<PageResult<ContextVO>> pageContext(@RequestBody ContextPageVO pageDTO,
                                                  HttpServletRequest httpServletRequest) {
        UserDTO userDTO = (UserDTO) httpServletRequest.getSession().getAttribute(UserSessionName);
        ContextPageDTO contextPageDTO = ContextConverter.toContextPageDTO(pageDTO);
        contextPageDTO.setOperatorId(userDTO.getId());
        PageResult<ContextBO> pageResult = contextBizService.pageContext(contextPageDTO);

        PageResult<ContextVO> contextVOs = PageResult.converterTo(pageResult, ContextConverter::boToContextVO);

        contextVOs.getList().forEach(contextVO -> {
            contextVO.setBeginTimeString(DateFormatUtils.format(contextVO.getBeginTime(), TimeFormatConsts.FORMAT));
            contextVO.setEndTimeString(DateFormatUtils.format(contextVO.getEndTime(), TimeFormatConsts.FORMAT));
        });

        return HttpResult.success(contextVOs);
    }

}
