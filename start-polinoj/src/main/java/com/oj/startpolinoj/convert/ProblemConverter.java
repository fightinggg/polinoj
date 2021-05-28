package com.oj.startpolinoj.convert;

import com.google.common.collect.Lists;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.ProblemCreateDTO;
import com.oj.commonpolinoj.dto.ProblemDTO;
import com.oj.commonpolinoj.dto.ProblemGetDTO;
import com.oj.commonpolinoj.dto.ProblemPageDTO;
import com.oj.commonpolinoj.dto.ProblemPullDTO;
import com.oj.commonpolinoj.dto.ProblemRemotePageDTO;
import com.oj.commonpolinoj.dto.ProblemSubmitDTO;
import com.oj.commonpolinoj.dto.SampleDTO;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.commonpolinoj.dto.SubmitPageDTO;
import com.oj.commonpolinoj.enums.SubmitStatus;
import com.oj.startpolinoj.vo.ProblemCreateVO;
import com.oj.startpolinoj.vo.ProblemGetVO;
import com.oj.startpolinoj.vo.ProblemPageVO;
import com.oj.startpolinoj.vo.ProblemPullVO;
import com.oj.startpolinoj.vo.ProblemRemotePageVO;
import com.oj.startpolinoj.vo.ProblemSubmitVO;
import com.oj.startpolinoj.vo.ProblemVO;
import com.oj.startpolinoj.vo.SampleVO;
import com.oj.startpolinoj.vo.SubmitPageVO;
import com.oj.startpolinoj.vo.SubmitVO;
import org.springframework.lang.NonNull;

import java.util.List;

public class ProblemConverter {

    public static ProblemVO toProblemVO(ProblemDTO problemDTO) {
        ProblemVO problemVO = new ProblemVO();
//        problemVO.setProblemId();
        problemVO.setTitle(problemDTO.getTitle());
        problemVO.setDescription(problemDTO.getDescription());
        problemVO.setHint(problemDTO.getHint());
        problemVO.setInput(problemDTO.getInput());
        problemVO.setOutput(problemDTO.getOutput());
//        problemVO.setSampleList();
        problemVO.setSource(problemDTO.getSource());
        problemVO.setSourceId(problemDTO.getSourceId());
        problemVO.setAuthor(problemDTO.getAuthor());
        problemVO.setTime(problemDTO.getTime());
        problemVO.setMemory(problemDTO.getMemory());
        problemVO.setAcCount(problemDTO.getAcCount());
        problemVO.setAllCount(problemDTO.getAllCount());
        // add
        problemVO.setProblemId(problemDTO.getId());
        problemVO.setSampleList(toSampleVOList(problemDTO.getSample()));
        return problemVO;
    }

    private static List<SampleVO> toSampleVOList(@NonNull List<SampleDTO> sampleDTOList) {
        List<SampleVO> sampleVOlist = Lists.newArrayList();
        for (SampleDTO sampleDTO : sampleDTOList) {
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
        return problemGetDTO;
    }

    public static ProblemCreateDTO toProblemCreateDTO(ProblemCreateVO problemCreateVO) {
        ProblemCreateDTO problemCreateDTO = new ProblemCreateDTO();
        problemCreateDTO.setDescription(problemCreateVO.getDescription());
        problemCreateDTO.setInput(problemCreateVO.getInput());
        problemCreateDTO.setOutput(problemCreateVO.getOutput());
        problemCreateDTO.setSample(problemCreateVO.getSample());
//        problemCreateDTO.setSource();
//        problemCreateDTO.setSourceId();
        problemCreateDTO.setAuthor(problemCreateVO.getAuthor());
        problemCreateDTO.setTime(problemCreateVO.getTime());
        problemCreateDTO.setMemory(problemCreateVO.getMemory());
        problemCreateDTO.setTitle(problemCreateVO.getTitle());
//        problemCreateDTO.setTestSampleDTOList();
        problemCreateDTO.setHint(problemCreateVO.getHint());

        // add
        problemCreateDTO.setTestSampleDTOList(problemCreateVO.getTest());
        return problemCreateDTO;

    }

    public static ProblemSubmitDTO toProblemSubmitDTO(ProblemSubmitVO problemSubmitVO) {
        ProblemSubmitDTO problemSubmitDTO = new ProblemSubmitDTO();
        problemSubmitDTO.setProblemId(problemSubmitVO.getProblemId());
        problemSubmitDTO.setContextId(problemSubmitVO.getContextId());
        problemSubmitDTO.setCode(problemSubmitVO.getCode());
        problemSubmitDTO.setLang(problemSubmitVO.getLang());
//        problemSubmitDTO.setUserId();
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
        List<ProblemVO> problemVOList = Lists.newArrayList();
        for (ProblemDTO problemDTO : list) {
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
