package com.oj.startpolinoj.convert;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Lists;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.commonpolinoj.enums.SubmitStatus;
import com.oj.polinojsandbox.openapi.SampleTestResult;
import com.oj.polinojsandbox.openapi.SampleTestResultDTO;
import com.oj.startpolinoj.vo.SampleTestResultVO;
import com.oj.startpolinoj.vo.SubmitVO;

import java.util.List;

public class SubmitConverter {
    public static List<SubmitVO> toSubmitResultVOList(List<SubmitDTO> submitDTOS) {
        List<SubmitVO> submitVOlist = Lists.newArrayList();
        for (SubmitDTO submitDTO : submitDTOS) {
            submitVOlist.add(toSubmitVO(submitDTO));
        }
        return submitVOlist;
    }

    public static SubmitVO toSubmitVO(SubmitDTO submitDTO) {
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
        submitVO.setCcInfo(submitDTO.getCcInfo());

        List<SampleTestResult> sampleTestResultDTOS = JSON.parseArray(submitDTO.getRunInfo(), SampleTestResult.class);
        submitVO.setRunInfo(toSampleTestResultVOList(sampleTestResultDTOS));
        return submitVO;
    }

    private static List<SampleTestResultVO> toSampleTestResultVOList(List<SampleTestResult> sampleTestResultDTOS) {
        List<SampleTestResultVO> sampleTestResultVOlist=Lists.newArrayList();
        for (SampleTestResult sampleTestResult :sampleTestResultDTOS) {
        	sampleTestResultVOlist.add(toSampleTestResultVO(sampleTestResult));
        }
        return sampleTestResultVOlist;
    }

    private static SampleTestResultVO toSampleTestResultVO(SampleTestResult sampleTestResultDTO) {
        SampleTestResultVO sampleTestResultVO = new SampleTestResultVO();
        sampleTestResultVO.setTimes(sampleTestResultDTO.getTimes());
        sampleTestResultVO.setMemory(sampleTestResultDTO.getMemory());
        sampleTestResultVO.setReturnCode(SubmitStatus.getById(sampleTestResultDTO.getReturnCode()));
        return sampleTestResultVO;
    }


    public static PageResult<SubmitVO> toSubmitResultVOPage(PageResult<SubmitDTO> submitResultDTOs) {
        PageResult<SubmitVO> pageResult = new PageResult<>();
        pageResult.setList((toSubmitResultVOList(submitResultDTOs.getList())));
        pageResult.setPageSize(submitResultDTOs.getPageSize());
        pageResult.setPageIndex(submitResultDTOs.getPageIndex());
        pageResult.setTotal(submitResultDTOs.getTotal());
        return pageResult;
    }
}
