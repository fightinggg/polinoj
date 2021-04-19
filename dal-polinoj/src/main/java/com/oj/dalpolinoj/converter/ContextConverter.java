package com.oj.dalpolinoj.converter;

import com.google.common.collect.Lists;

import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.ContextCreateDTO;
import com.oj.commonpolinoj.dto.ContextDTO;
import com.oj.commonpolinoj.dto.ContextUpdateDTO;
import com.oj.dalpolinoj.domin.Context;

import java.util.List;

public class ContextConverter {
    public static Context toDO(ContextCreateDTO createDTO) {
        Context context = new Context();
//        context.setId();
        context.setName(createDTO.getName());
        context.setBeginTime(createDTO.getBeginTime());
        context.setEndTime(createDTO.getEndTime());
        context.setOwnerId(createDTO.getOwnerId());
        return context;
    }

    public static ContextDTO toDTO(Context context) {
        ContextDTO contextDTO = new ContextDTO();
        contextDTO.setId(context.getId());
        contextDTO.setName(context.getName());
        contextDTO.setBeginTime(context.getBeginTime());
        contextDTO.setEndTime(context.getEndTime());
        contextDTO.setOwnerId(context.getOwnerId());
//        contextDTO.setProblemId();
        return contextDTO;
    }

    public static Context toDO(ContextUpdateDTO updateDTO) {
        Context context = new Context();
        context.setId(updateDTO.getId());
        context.setName(updateDTO.getName());
        context.setBeginTime(updateDTO.getBeginTime());
        context.setEndTime(updateDTO.getEndTime());
//        context.setOwnerId();
        return context;
    }

    public static PageResult<ContextDTO> toPageDTO(PageResult<Context> pageResult) {
        PageResult<ContextDTO> pageResultDTO = new PageResult<>();
        pageResultDTO.setList(toListDTO(pageResult.getList()));
        pageResultDTO.setPageSize(pageResult.getPageSize());
        pageResultDTO.setPageIndex(pageResult.getPageIndex());
        pageResultDTO.setTotal(pageResult.getTotal());
        return pageResultDTO;
    }

    private static List<ContextDTO> toListDTO(List<Context> list) {
        List<ContextDTO> contextDTOlist = Lists.newArrayList();
        for (Context context : list) {
            contextDTOlist.add(toDTO(context));
        }
        return contextDTOlist;
    }
}
