package com.oj.commonpolinoj.converter;

import com.google.common.collect.Lists;

import com.oj.commonpolinoj.Page;
import com.oj.commonpolinoj.dto.*;
import com.oj.commonpolinoj.vo.*;

import java.util.List;

public class ProblemConverter {
    public static ProblemVO toProblemVO(ProblemDTO problemDTO) {
        ProblemVO problemVO = new ProblemVO();
        problemVO.setDescription(problemDTO.getDescription());
        problemVO.setInput(problemDTO.getInput());
        problemVO.setOutput(problemDTO.getOutput());
        problemVO.setSampleList(problemDTO.getSampleList());
        problemVO.setSource(problemDTO.getSource());
        problemVO.setAuthor(problemDTO.getAuthor());
        return problemVO;
    }

    public static ProblemGetDTO toProblemGetDTO(ProblemGetVO problemGetVO) {
        ProblemGetDTO problemGetDTO = new ProblemGetDTO();
        problemGetDTO.setProblemId(problemGetVO.getProblemId());
        problemGetDTO.setOperatorUser(problemGetVO.getOperatorUser());
        problemGetDTO.setSource(problemGetVO.getSource());
        return problemGetDTO;
    }

    public static ProblemCreateDTO toProblemCreateDTO(ProblemCreateVO problemCreateVO) {
        ProblemCreateDTO problemCreateDTO = new ProblemCreateDTO();
        problemCreateDTO.setDescription(problemCreateVO.getDescription());
        problemCreateDTO.setInput(problemCreateVO.getInput());
        problemCreateDTO.setOutput(problemCreateVO.getOutput());
        problemCreateDTO.setSampleList(problemCreateVO.getSampleList());
        problemCreateDTO.setSource(problemCreateVO.getSource());
        problemCreateDTO.setAuthor(problemCreateVO.getAuthor());
        problemCreateDTO.setTime(problemCreateVO.getTime());
        problemCreateDTO.setMemory(problemCreateVO.getMemory());
        problemCreateDTO.setTestSampleList(problemCreateVO.getTestSampleList());
        return problemCreateDTO;
    }

    public static ProblemSubmitDTO toProblemSubmitDTO(ProblemSubmitVO problemSubmitVO) {
        ProblemSubmitDTO problemSubmitDTO = new ProblemSubmitDTO();
        problemSubmitDTO.setProblemId(problemSubmitVO.getProblemId());
        problemSubmitDTO.setSource(problemSubmitVO.getSource());
        problemSubmitDTO.setCode(problemSubmitVO.getCode());
        problemSubmitDTO.setLang(problemSubmitVO.getLang());
        return problemSubmitDTO;
    }

    public static SubmitResultGetDTO toSubmitResultGetDTO(SubmitResultGetVO submitResultGetVO) {
        SubmitResultGetDTO submitResultGetDTO = new SubmitResultGetDTO();
        submitResultGetDTO.setSource(submitResultGetVO.getSource());
        submitResultGetDTO.setProblemId(submitResultGetVO.getProblemId());
        submitResultGetDTO.setUser(submitResultGetVO.getUser());
        submitResultGetDTO.setStatus(submitResultGetVO.getStatus());
        submitResultGetDTO.setPageIndex(submitResultGetVO.getPageIndex());
        submitResultGetDTO.setPageSize(submitResultGetVO.getPageSize());
        return submitResultGetDTO;
    }

    public static List<SubmitResultVO> toSubmitResultVOList(List<SubmitResultDTO> submitResultDTOs) {
        List<SubmitResultVO> submitResultVOlist = Lists.newArrayList();
        for (SubmitResultDTO submitResultDTO : submitResultDTOs) {
            submitResultVOlist.add(toSubmitResultVO(submitResultDTO));
        }
        return submitResultVOlist;
    }

    private static SubmitResultVO toSubmitResultVO(SubmitResultDTO submitResultDTO) {
        SubmitResultVO submitResultVO = new SubmitResultVO();
        submitResultVO.setProblemSource(submitResultDTO.getProblemSource());
        submitResultVO.setProblemId(submitResultDTO.getProblemId());
        submitResultVO.setUser(submitResultDTO.getUser());
        submitResultVO.setStatus(submitResultDTO.getStatus());
        submitResultVO.setCode(submitResultDTO.getCode());
        submitResultVO.setSubmitTime(submitResultDTO.getSubmitTime());
        submitResultVO.setExecTime(submitResultDTO.getExecTime());
        submitResultVO.setExecMemory(submitResultDTO.getExecMemory());
        return submitResultVO;
    }

    public static Page<SubmitResultVO> toSubmitResultVOPage(Page<SubmitResultDTO> submitResultDTOs) {
        Page<SubmitResultVO> page = new Page<>();
        page.setList((toSubmitResultVOList(submitResultDTOs.getList())));
        page.setPageSize(submitResultDTOs.getPageSize());
        page.setPageIndex(submitResultDTOs.getPageIndex());
        page.setTotal(submitResultDTOs.getTotal());
        return page;

    }
}
