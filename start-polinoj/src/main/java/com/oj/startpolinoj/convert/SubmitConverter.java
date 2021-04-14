package com.oj.startpolinoj.convert;

import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.startpolinoj.vo.SubmitVO;

public class SubmitConverter {
    public static SubmitVO toSubmitVO(SubmitDTO submitDTO) {
        SubmitVO submitVO = new SubmitVO();
//        submitVO.setProblemSource();
        submitVO.setProblemId(submitDTO.getProblemId());
        submitVO.setUser(submitDTO.getUser());
        submitVO.setStatus(String.valueOf(submitDTO.getStatus()));
        submitVO.setCode(submitDTO.getCode());
        submitVO.setSubmitTime(submitDTO.getSubmitTime());
        submitVO.setExecTime(submitDTO.getExecTime());
        submitVO.setExecMemory(submitDTO.getExecMemory());
        return submitVO;
    }
}
