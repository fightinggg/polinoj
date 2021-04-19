package com.oj.startpolinoj.convert;

import com.google.common.collect.Lists;

import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.ContextCreateDTO;
import com.oj.commonpolinoj.dto.ContextDTO;
import com.oj.commonpolinoj.dto.ContextPageDTO;
import com.oj.commonpolinoj.dto.ContextUpdateDTO;
import com.oj.startpolinoj.vo.ContextCreateVO;
import com.oj.startpolinoj.vo.ContextPageVO;
import com.oj.startpolinoj.vo.ContextUpdateVO;
import com.oj.startpolinoj.vo.ContextVO;

import java.util.List;

public class ContextConverter {
    public static ContextCreateDTO toDTO(ContextCreateVO createVO) {
        ContextCreateDTO contextCreateDTO = new ContextCreateDTO();
        contextCreateDTO.setName(createVO.getName());
        contextCreateDTO.setBeginTime(createVO.getBeginTime());
        contextCreateDTO.setEndTime(createVO.getEndTime());
//        contextCreateDTO.setOwnerId(createVO.getOwnerId());
        contextCreateDTO.setProblemId(createVO.getProblemId());
        return contextCreateDTO;
    }

    public static ContextVO toVO(ContextDTO context) {
        ContextVO contextVO = new ContextVO();
        contextVO.setId(context.getId());
        contextVO.setName(context.getName());
        contextVO.setBeginTime(context.getBeginTime());
        contextVO.setEndTime(context.getEndTime());
        contextVO.setOwnerId(context.getOwnerId());
        contextVO.setProblemId(context.getProblemId());
        return contextVO;
    }

    public static ContextUpdateDTO toDTO(ContextUpdateVO updateVO) {
        ContextUpdateDTO contextUpdateDTO = new ContextUpdateDTO();
        contextUpdateDTO.setId(updateVO.getId());
        contextUpdateDTO.setName(updateVO.getName());
        contextUpdateDTO.setBeginTime(updateVO.getBeginTime());
        contextUpdateDTO.setEndTime(updateVO.getEndTime());
        contextUpdateDTO.setProblemId(updateVO.getProblemId());
        return contextUpdateDTO;
    }

    public static ContextPageDTO toPageDTO(ContextPageVO pageDTO) {
        ContextPageDTO contextPageDTO = new ContextPageDTO();
        contextPageDTO.setOwnerId(pageDTO.getOwnerId());
        contextPageDTO.setPageIndex(pageDTO.getPageIndex());
        contextPageDTO.setPageSize(pageDTO.getPageSize());
        return contextPageDTO;

    }

    public static PageResult<ContextVO> toPageVO(PageResult<ContextDTO> pageResult) {
        PageResult<ContextVO> pageVOResult = new PageResult<>();
        pageVOResult.setList(toListVO(pageResult.getList()));
        pageVOResult.setPageSize(pageResult.getPageSize());
        pageVOResult.setPageIndex(pageResult.getPageIndex());
        pageVOResult.setTotal(pageResult.getTotal());
        return pageVOResult;
    }

    private static List<ContextVO> toListVO(List<ContextDTO> list) {
        List<ContextVO> contextVOlist = Lists.newArrayList();
        for (ContextDTO contextDTO : list) {
            contextVOlist.add(toVO(contextDTO));
        }
        return contextVOlist;
    }
}
