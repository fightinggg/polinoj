package com.oj.startpolinoj.convert;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Lists;
import com.oj.bizpolinoj.domain.bo.SubmitBO;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.commonpolinoj.enums.SubmitStatus;
import com.oj.polinojsandbox.openapi.RunCodeMessage;
import com.oj.startpolinoj.vo.SampleTestResultVO;
import com.oj.startpolinoj.vo.SubmitVO;

import java.util.List;

public class SubmitConverter {
    public static List<SubmitVO> toSubmitResultVOList(List<SubmitBO> submitBOS) {
        List<SubmitVO> submitVOlist = Lists.newArrayList();
        for (SubmitBO submitBO : submitBOS) {
            submitVOlist.add(toSubmitVO(submitBO));
        }
        return submitVOlist;
    }

    public static SubmitVO toSubmitVO(SubmitBO submitBO) {
        SubmitVO submitVO = new SubmitVO();
        submitVO.setId(submitBO.getId());
        submitVO.setProblemId(submitBO.getProblemId());
        submitVO.setUserId(submitBO.getUserId());
        submitVO.setUserName(submitBO.getUserName());
        submitVO.setStatus(String.valueOf(submitBO.getStatus()));
        submitVO.setCode(submitBO.getCode());
        submitVO.setSubmitTime(String.valueOf(submitBO.getSubmitTime()));
        submitVO.setExecTime(submitBO.getExecTime());
        submitVO.setExecMemory(submitBO.getExecMemory());
        submitVO.setCcInfo(submitBO.getCcInfo());
//        submitVO.setRunInfo(submitBO.getRunInfo());
//        return submitVO;


        // 处理json
        List<RunCodeMessage> sampleTestResultDTOS = JSON.parseArray(submitBO.getRunInfo(), RunCodeMessage.class);
        submitVO.setRunInfo(toSampleTestResultVOList(sampleTestResultDTOS));
        // 把状态代码变为状态字符串
        submitVO.setStatus(SubmitStatus.getById(submitBO.getStatus()));
        return submitVO;
    }

    public static SubmitVO toSubmitVO(SubmitDTO submitDTO) {
        SubmitVO submitVO = new SubmitVO();
        submitVO.setId(submitDTO.getId());
        submitVO.setProblemId(submitDTO.getProblemId());
        submitVO.setUserId(submitDTO.getUserId());
//        submitVO.setUserName(submitDTO.getUserName());
        submitVO.setStatus(String.valueOf(submitDTO.getStatus()));
        submitVO.setCode(submitDTO.getCode());
        submitVO.setSubmitTime(String.valueOf(submitDTO.getSubmitTime()));
        submitVO.setExecTime(submitDTO.getExecTime());
        submitVO.setExecMemory(submitDTO.getExecMemory());
        submitVO.setCcInfo(submitDTO.getCcInfo());
//        submitVO.setRunInfo(submitDTO.getRunInfo());
//        return submitVO;


        // 处理json
        List<RunCodeMessage> sampleTestResultDTOS = JSON.parseArray(submitDTO.getRunInfo(), RunCodeMessage.class);
        submitVO.setRunInfo(toSampleTestResultVOList(sampleTestResultDTOS));
        // 把状态代码变为状态字符串
        submitVO.setStatus(SubmitStatus.getById(submitDTO.getStatus()));
        return submitVO;
    }

    private static List<SampleTestResultVO> toSampleTestResultVOList(List<RunCodeMessage> runCodeMessages) {
        List<SampleTestResultVO> sampleTestResultVOlist = Lists.newArrayList();
        for (RunCodeMessage sampleTestResult : runCodeMessages) {
            sampleTestResultVOlist.add(toSampleTestResultVO(sampleTestResult));
        }
        return sampleTestResultVOlist;
    }

    private static SampleTestResultVO toSampleTestResultVO(RunCodeMessage sampleTestResultDTO) {
        SampleTestResultVO sampleTestResultVO = new SampleTestResultVO();
        sampleTestResultVO.setTimes(sampleTestResultDTO.getTimes());
        sampleTestResultVO.setMemory(sampleTestResultDTO.getMemory());
        sampleTestResultVO.setReturnCode(SubmitStatus.getById(sampleTestResultDTO.getReturnCode()));
        return sampleTestResultVO;
    }


    public static PageResult<SubmitVO> toSubmitResultVOPage(PageResult<SubmitBO> submitBOPageResult) {
        PageResult<SubmitVO> pageResult = new PageResult<>();
        pageResult.setList((toSubmitResultVOList(submitBOPageResult.getList())));
        pageResult.setPageSize(submitBOPageResult.getPageSize());
        pageResult.setPageIndex(submitBOPageResult.getPageIndex());
        pageResult.setTotal(submitBOPageResult.getTotal());
        return pageResult;
    }
}
