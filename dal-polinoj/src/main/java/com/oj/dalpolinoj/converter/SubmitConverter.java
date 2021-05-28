package com.oj.dalpolinoj.converter;

import com.google.common.collect.Lists;

import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.dalpolinoj.domin.Submit;

import java.util.List;

public class SubmitConverter {
    public static Submit toSubmitDO(SubmitDTO submitDTO) {
        Submit submit = new Submit();
        submit.setId(submitDTO.getId());
        submit.setProblemId(submitDTO.getProblemId());
        submit.setSourceSubmitId(submitDTO.getSourceSubmitId());
        submit.setCode(submitDTO.getCode());
        submit.setUserId(submitDTO.getUserId());
        submit.setStatus(submitDTO.getStatus());
        submit.setExecTime(submitDTO.getExecTime());
        submit.setExecMemory(submitDTO.getExecMemory());
        submit.setCcInfo(submitDTO.getCcInfo());
        submit.setRunInfo(submitDTO.getRunInfo());
        submit.setContextId(submitDTO.getContextId());
        submit.setSubmitTime(submitDTO.getSubmitTime());
        return submit;
    }

    public static SubmitDTO toSubmitDTO(Submit submit) {
        SubmitDTO submitDTO = new SubmitDTO();
        submitDTO.setId(submit.getId());
        submitDTO.setProblemId(submit.getProblemId());
        submitDTO.setSourceSubmitId(submit.getSourceSubmitId());
        submitDTO.setCode(submit.getCode());
        submitDTO.setUserId(submit.getUserId());
        submitDTO.setStatus(submit.getStatus());
        submitDTO.setExecTime(submit.getExecTime());
        submitDTO.setExecMemory(submit.getExecMemory());
        submitDTO.setCcInfo(submit.getCcInfo());
        submitDTO.setRunInfo(submit.getRunInfo());
        submitDTO.setContextId(submit.getContextId());
        submitDTO.setSubmitTime(submit.getSubmitTime());
        return submitDTO;
    }

    public static List<SubmitDTO> toSubmitDTOList(List<Submit> records) {
        List<SubmitDTO> submitDTOlist = Lists.newArrayList();
        for (Submit submit : records) {
            submitDTOlist.add(toSubmitDTO(submit));
        }
        return submitDTOlist;
    }
}
