package com.oj.bizpolinoj.service.biz.impl;

import com.oj.bizpolinoj.service.biz.SubmitBizService;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.commonpolinoj.dto.SubmitGetDTO;
import com.oj.dalpolinoj.service.SubmitDAOService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubmitBizServiceImpl implements SubmitBizService {

    @Autowired
    SubmitDAOService submitService;

    @Override
    public SubmitDTO getSubmitDTO(SubmitGetDTO submitGetDTO){
        return submitService.getSubmitDTO(submitGetDTO);
    }
}
