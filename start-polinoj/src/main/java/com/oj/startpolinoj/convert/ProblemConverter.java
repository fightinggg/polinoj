package com.oj.startpolinoj.convert;

import com.google.common.collect.Lists;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;
import com.oj.commonpolinoj.enums.SubmitStatus;
import com.oj.startpolinoj.vo.*;

import java.util.List;

public class ProblemConverter {

    public static ProblemVO toProblemVO(ProblemDTO problemDTO) {
        ProblemVO problemVO = new ProblemVO();
        problemVO.setProblemId(problemDTO.getProblemId());
        problemVO.setTitle(problemDTO.getTitle());
        problemVO.setDescription(problemDTO.getDescription());
        problemVO.setInput(problemDTO.getInput());
        problemVO.setOutput(problemDTO.getOutput());
        problemVO.setSampleList(toSampleVOList(problemDTO.getSampleDTOList()));
        problemVO.setSource(problemDTO.getSource());
        problemVO.setSourceId(problemDTO.getSourceId());
        problemVO.setAuthor(problemDTO.getAuthor());
        problemVO.setTime(problemDTO.getTime());
        problemVO.setMemory(problemDTO.getMemory());
        return problemVO;
    }

    private static List<SampleVO> toSampleVOList(List<SampleDTO> sampleDTOList) {
        List<SampleVO> sampleVOlist=Lists.newArrayList();
        for (SampleDTO sampleDTO :sampleDTOList) {
        	sampleVOlist.add(toSampleVO(sampleDTO));
        }
        return sampleVOlist;
    }

    private static SampleVO toSampleVO(SampleDTO sampleDTO) {
        SampleVO sampleVO = new SampleVO();
        sampleVO.setId(sampleDTO.getId());
        sampleVO.setProblemId(sampleDTO.getProblemId());
        sampleVO.setInput(sampleDTO.getInput());
        sampleVO.setOutput(sampleDTO.getOutput());
        return sampleVO;

    }

    public static ProblemGetDTO toProblemGetDTO(ProblemGetVO problemGetVO) {
        ProblemGetDTO problemGetDTO = new ProblemGetDTO();
        problemGetDTO.setProblemId(problemGetVO.getProblemId());
        problemGetDTO.setOperatorUser(problemGetVO.getOperatorUser());
        return problemGetDTO;
    }

    public static ProblemCreateDTO toProblemCreateDTO(ProblemCreateVO problemCreateVO) {
        ProblemCreateDTO problemCreateDTO = new ProblemCreateDTO();
        problemCreateDTO.setDescription(problemCreateVO.getDescription());
        problemCreateDTO.setInput(problemCreateVO.getInput());
        problemCreateDTO.setOutput(problemCreateVO.getOutput());
        problemCreateDTO.setSampleDTOList(problemCreateVO.getSampleDTOList());
        problemCreateDTO.setSource(problemCreateVO.getSource());
        problemCreateDTO.setAuthor(problemCreateVO.getAuthor());
        problemCreateDTO.setTime(problemCreateVO.getTime());
        problemCreateDTO.setMemory(problemCreateVO.getMemory());
        problemCreateDTO.setTestSampleDTOList(problemCreateVO.getTestSampleDTOList());
        return problemCreateDTO;
    }

    public static ProblemSubmitDTO toProblemSubmitDTO(ProblemSubmitVO problemSubmitVO) {
        ProblemSubmitDTO problemSubmitDTO = new ProblemSubmitDTO();
        problemSubmitDTO.setProblemId(problemSubmitVO.getProblemId());
        problemSubmitDTO.setCode(problemSubmitVO.getCode());
        problemSubmitDTO.setLang(problemSubmitVO.getLang());
        return problemSubmitDTO;
    }

    public static SubmitPageDTO toSubmitResultGetDTO(SubmitPageVO submitPageVO) {
        SubmitPageDTO submitPageDTO = new SubmitPageDTO();
        submitPageDTO.setSource(submitPageVO.getSource());
        submitPageDTO.setProblemId(submitPageVO.getProblemId());
        submitPageDTO.setUser(submitPageVO.getUser());
        submitPageDTO.setStatus(submitPageVO.getStatus());
        submitPageDTO.setPageIndex(submitPageVO.getPageIndex());
        submitPageDTO.setPageSize(submitPageVO.getPageSize());
        return submitPageDTO;
    }

    public static List<SubmitVO> toSubmitResultVOList(List<SubmitDTO> submitDTOS) {
        List<SubmitVO> submitVOlist = Lists.newArrayList();
        for (SubmitDTO submitDTO : submitDTOS) {
            submitVOlist.add(toSubmitResultVO(submitDTO));
        }
        return submitVOlist;
    }

    private static SubmitVO toSubmitResultVO(SubmitDTO submitDTO) {
        SubmitVO submitVO = new SubmitVO();
        submitVO.setId(submitDTO.getId());
        submitVO.setProblemId(submitDTO.getProblemId());
        submitVO.setUserId(submitDTO.getUserId());
        submitVO.setUserName(submitDTO.getUserName());
        // 把状态代码变为状态字符串
        submitVO.setStatus(SubmitStatus.getById(submitDTO.getStatus()));
        submitVO.setCode(submitDTO.getCode());
        submitVO.setSubmitTime(submitDTO.getSubmitTime());
        submitVO.setExecTime(submitDTO.getExecTime());
        submitVO.setExecMemory(submitDTO.getExecMemory());
        return submitVO;
    }


    public static PageResult<SubmitVO> toSubmitResultVOPage(PageResult<SubmitDTO> submitResultDTOs) {
        PageResult<SubmitVO> pageResult = new PageResult<>();
        pageResult.setList((toSubmitResultVOList(submitResultDTOs.getList())));
        pageResult.setPageSize(submitResultDTOs.getPageSize());
        pageResult.setPageIndex(submitResultDTOs.getPageIndex());
        pageResult.setTotal(submitResultDTOs.getTotal());
        return pageResult;
    }


    public static ProblemPullDTO toProblemPullDTO(ProblemPullVO problemPullVO) {
        ProblemPullDTO problemPullDTO = new ProblemPullDTO();
        problemPullDTO.setSource(problemPullVO.getSource());
        problemPullDTO.setSourceId(problemPullVO.getSourceId());
        return problemPullDTO;
    }

    public static ProblemPageDTO toProblemPageDTO(ProblemPageVO problemPageVO) {
        ProblemPageDTO problemPageDTO = new ProblemPageDTO();
        problemPageDTO.setOperatorUser(problemPageVO.getOperatorUser());
        problemPageDTO.setSource(problemPageVO.getSource());
        problemPageDTO.setPageIndex(problemPageVO.getPageIndex());
        problemPageDTO.setPageSize(problemPageVO.getPageSize());
        return problemPageDTO;
    }

    public static PageResult<ProblemVO> toProblemPageVO(PageResult<ProblemDTO> problem) {
        PageResult<ProblemVO> pageResult = new PageResult<>();
        pageResult.setList(toProblemVOList(problem.getList()));
        pageResult.setPageSize(problem.getPageSize());
        pageResult.setPageIndex(problem.getPageIndex());
        pageResult.setTotal(problem.getTotal());
        return pageResult;
    }

    private static List<ProblemVO> toProblemVOList(List<ProblemDTO> list) {
        List<ProblemVO> problemVOList=Lists.newArrayList();
        for (ProblemDTO problemDTO :list) {
            problemVOList.add(toProblemVO(problemDTO));
        }
        return problemVOList;

    }

    public static ProblemRemotePageDTO toProblemRemotePageDTO(ProblemRemotePageVO problemRemotePageVO) {
        ProblemRemotePageDTO problemRemotePageDTO = new ProblemRemotePageDTO();
        problemRemotePageDTO.setSource(problemRemotePageVO.getSource());
        problemRemotePageDTO.setPageIndex(problemRemotePageVO.getPageIndex());
        problemRemotePageDTO.setPageSize(problemRemotePageVO.getPageSize());
        return problemRemotePageDTO;
    }
}
