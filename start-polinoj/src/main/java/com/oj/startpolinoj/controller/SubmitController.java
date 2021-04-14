package com.oj.startpolinoj.controller;

import com.oj.bizpolinoj.service.biz.SubmitBizService;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.commonpolinoj.dto.SubmitGetDTO;
import com.oj.startpolinoj.convert.SubmitConverter;
import com.oj.startpolinoj.vo.SubmitVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/submit")
public class SubmitController {
    @Autowired
    SubmitBizService submitBizService;

    @GetMapping
    SubmitVO getSubmit(String id){
        SubmitGetDTO submitGetDTO = new SubmitGetDTO();
        submitGetDTO.setId(id);
        SubmitDTO submitDTO = submitBizService.getSubmitDTO(submitGetDTO);
        return SubmitConverter.toSubmitVO(submitDTO);
    }

}
