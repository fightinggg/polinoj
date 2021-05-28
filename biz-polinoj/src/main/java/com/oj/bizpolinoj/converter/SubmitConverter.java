package com.oj.bizpolinoj.converter;

import com.google.common.collect.Lists;

import com.oj.bizpolinoj.domain.bo.SubmitBO;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.ProblemSubmitDTO;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.dalpolinoj.domin.Submit;

import java.util.List;

public class SubmitConverter {

    public static SubmitDTO toSubmitDTO(ProblemSubmitDTO problemCreateDTO) {
        SubmitDTO submitDTO = new SubmitDTO();
//        submitDTO.setId();
        submitDTO.setProblemId(problemCreateDTO.getProblemId());
//        submitDTO.setSourceSubmitId();
        submitDTO.setCode(problemCreateDTO.getCode());
        submitDTO.setUserId(problemCreateDTO.getUserId());
//        submitDTO.setStatus();
//        submitDTO.setExecTime();
//        submitDTO.setExecMemory();
//        submitDTO.setCcInfo();
//        submitDTO.setRunInfo();
        submitDTO.setContextId(problemCreateDTO.getContextId());
//        submitDTO.setSubmitTime();
        return submitDTO;

    }


    public static SubmitBO toSubmitBO(SubmitDTO submitDTO) {
        SubmitBO submitBO = new SubmitBO();
        submitBO.setId(submitDTO.getId());
        submitBO.setProblemId(submitDTO.getProblemId());
        submitBO.setSourceSubmitId(submitDTO.getSourceSubmitId());
        submitBO.setCode(submitDTO.getCode());
        submitBO.setUserId(submitDTO.getUserId());
//        submitBO.setUserName();
        submitBO.setStatus(submitDTO.getStatus());
        submitBO.setExecTime(submitDTO.getExecTime());
        submitBO.setExecMemory(submitDTO.getExecMemory());
        submitBO.setCcInfo(submitDTO.getCcInfo());
        submitBO.setRunInfo(submitDTO.getRunInfo());
        submitBO.setContextId(submitDTO.getContextId());
        submitBO.setSubmitTime(submitDTO.getSubmitTime());
        return submitBO;

    }

    public static List<SubmitBO> toSubmitList(List<SubmitDTO> submitDTOList) {
        List<SubmitBO> submitBOlist = Lists.newArrayList();
        for (SubmitDTO submitDTO : submitDTOList) {
            submitBOlist.add(toSubmitBO(submitDTO));
        }
        return submitBOlist;
    }


    public static PageResult<SubmitBO> toSubmitBOPage(PageResult<SubmitDTO> submitDTOPageResult) {
        PageResult<SubmitBO> pageResult = new PageResult<>();
        pageResult.setList(toSubmitList(submitDTOPageResult.getList()));
        pageResult.setPageSize(submitDTOPageResult.getPageSize());
        pageResult.setPageIndex(submitDTOPageResult.getPageIndex());
        pageResult.setTotal(submitDTOPageResult.getTotal());
        return pageResult;
    }
}
