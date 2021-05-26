package com.oj.bizpolinoj;

import com.alibaba.fastjson.JSON;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.commonpolinoj.dto.SubmitGetDTO;
import com.oj.commonpolinoj.enums.SubmitStatus;
import com.oj.dalpolinoj.service.SubmitDAOService;
import com.oj.polinojsandbox.openapi.CCCodeMessage;
import com.oj.polinojsandbox.openapi.FinalCodeMessage;
import com.oj.polinojsandbox.openapi.KafkaTopicConsts;
import com.oj.polinojsandbox.openapi.RunCodeMessage;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Slf4j
@Component
public class KafkaSubmitCodeComponent {
    @Autowired
    SubmitDAOService submitDAOService;

    @KafkaListener(id = KafkaTopicConsts.ccCodeGroup, topics = KafkaTopicConsts.ccCodeTopic)
    public void listenCC(CCCodeMessage ccCodeMessage) {
        log.info("listenCC: {}", ccCodeMessage);
        SubmitDTO submitDTO = new SubmitDTO();
        submitDTO.setId(ccCodeMessage.getSubmitId());
        submitDTO.setCcInfo(ccCodeMessage.getCcInfo());
        submitDTO.setStatus(SubmitStatus.PROCESS.getCode());
        // TODO CC Time
        //submitDTO.setCcTime(ccCodeMessage.getCcTime());
        submitDAOService.updateSubmit(submitDTO);
    }

    @Transactional
    @KafkaListener(id = KafkaTopicConsts.runCodeGroup, topics = KafkaTopicConsts.runCodeTopic)
    public void listenRun(RunCodeMessage runCodeMessage) {
        log.info("listenRun: {}", runCodeMessage);
        SubmitGetDTO submitGetDTO = new SubmitGetDTO();
        submitGetDTO.setId(runCodeMessage.getSubmitId());
        SubmitDTO submitDTO = submitDAOService.getSubmitDTO(submitGetDTO);
        List<RunCodeMessage> runCodeMessages = JSON.parseArray(submitDTO.getRunInfo(), RunCodeMessage.class);
        runCodeMessages.add(runCodeMessage);
        submitDTO.setRunInfo(JSON.toJSONString(runCodeMessages));
        submitDAOService.updateSubmit(submitDTO);
    }


    @KafkaListener(id = KafkaTopicConsts.finalCodeGroup, topics = KafkaTopicConsts.finalCodeTopic)
    public void listenRun(FinalCodeMessage finalCodeMessage) {
        log.info("listenFinal: {}", finalCodeMessage);
        SubmitGetDTO submitGetDTO = new SubmitGetDTO();
        submitGetDTO.setId(finalCodeMessage.getSubmitId());
        SubmitDTO submitDTO = submitDAOService.getSubmitDTO(submitGetDTO);
        submitDTO.setStatus(finalCodeMessage.getStatus());
        submitDTO.setExecTime(finalCodeMessage.getTimes());
        submitDAOService.updateSubmit(submitDTO);
    }


}
