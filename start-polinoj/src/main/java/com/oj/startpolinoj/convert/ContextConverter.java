package com.oj.startpolinoj.convert;

import com.google.common.collect.Lists;

import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.startpolinoj.vo.*;

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
        contextVO.setOwnerName(context.getOwnerName());
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

    public static List<ContextRankVO> toContextRankVOList(List<ContextRankDTO> contextRankDTOS) {
        List<ContextRankVO> contextRankVOlist = Lists.newArrayList();
        for (ContextRankDTO contextRankDTO : contextRankDTOS) {
            contextRankVOlist.add(toContextRankVO(contextRankDTO));
        }
        return contextRankVOlist;
    }

    private static ContextRankVO toContextRankVO(ContextRankDTO contextRankDTO) {
        ContextRankVO contextRankVO = new ContextRankVO();
        contextRankVO.setProblemStateVOList(toContextRankVOProblemList(contextRankDTO.getProblemStateDTOList()));
        contextRankVO.setRank(contextRankDTO.getRank());
        contextRankVO.setStar(contextRankDTO.getStar());
        contextRankVO.setScore(contextRankDTO.getScore());
        contextRankVO.setAcceptCount(contextRankDTO.getAcceptCount());
        contextRankVO.setUserName(contextRankDTO.getUserName());
        contextRankVO.setUserId(contextRankDTO.getUserId());
        return contextRankVO;

    }

    private static List<ContextRankVO.ProblemStateVO>
    toContextRankVOProblemList(List<ContextRankDTO.ProblemStateDTO> problemStateDTOList) {
        List<ContextRankVO.ProblemStateVO> problemStatelistVO = Lists.newArrayList();
        for (ContextRankDTO.ProblemStateDTO problemStateDTO : problemStateDTOList) {
            problemStatelistVO.add(toContextRankVOProblem(problemStateDTO));
        }
        return problemStatelistVO;
    }

    private static ContextRankVO.ProblemStateVO
    toContextRankVOProblem(ContextRankDTO.ProblemStateDTO problemStateDTO) {
        ContextRankVO.ProblemStateVO problemStateVO = new ContextRankVO.ProblemStateVO();
        problemStateVO.setProblemId(problemStateDTO.getProblemId());
        problemStateVO.setFirstBlood(problemStateDTO.getFirstBlood());
        problemStateVO.setAccept(problemStateDTO.getAccept());
        problemStateVO.setAcceptTime(problemStateDTO.getAcceptTime());
        problemStateVO.setPunish(problemStateDTO.getPunish());
        problemStateVO.setScore(problemStateDTO.getScore());
        return problemStateVO;

    }

    public static ContextRankListVO toContextRankListVO(ContextRankListDTO contextRankList) {
        ContextRankListVO contextRankListVO = new ContextRankListVO();
        contextRankListVO.setList(toContextRankVOList(contextRankList.getList()));
        contextRankListVO.setProblemSize(contextRankList.getProblemSize());
        return contextRankListVO;
    }
}
