package com.oj.bizpolinoj;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.commonpolinoj.dto.SubmitGetDTO;
import com.oj.commonpolinoj.enums.SubmitStatus;
import com.oj.dalpolinoj.service.SubmitDAOService;
import com.oj.polinojsandbox.openapi.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@Slf4j
@Component
public class KafkaSubmitCodeComponent {
    @Autowired
    SubmitDAOService submitDAOService;
    @Autowired
    KafkaSubmitCodeComponent self;

    Map<String, Function<JSONObject, Object>> dispatcher = new HashMap<>();

    @PostConstruct
    void postConstruct() {
        dispatcher.put(KafkaTopicConsts.ccCodeType, (o) -> {
            self.listenCC(o.toJavaObject(CCCodeMessage.class));
            return null;
        });
        dispatcher.put(KafkaTopicConsts.runCodeType, (o) -> {
            self.listenRun(o.toJavaObject(RunCodeMessage.class));
            return null;
        });
        dispatcher.put(KafkaTopicConsts.finalCodeType, (o) -> {
            self.listenFinal(o.toJavaObject(FinalCodeMessage.class));
            return null;
        });
    }

    @KafkaListener(id = KafkaTopicConsts.testResultGroup, topics = KafkaTopicConsts.testResultTopic)
    public void listen(String sampleTestCodeMessage) {
        final JSONObject jsonObject = JSON.parseObject(sampleTestCodeMessage);
        dispatcher.get(jsonObject.getString("type")).apply(jsonObject.getJSONObject("data"));
    }


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


    public void listenFinal(FinalCodeMessage finalCodeMessage) {
        log.info("listenFinal: {}", finalCodeMessage);
        SubmitGetDTO submitGetDTO = new SubmitGetDTO();
        submitGetDTO.setId(finalCodeMessage.getSubmitId());
        SubmitDTO submitDTO = submitDAOService.getSubmitDTO(submitGetDTO);
        submitDTO.setStatus(finalCodeMessage.getStatus());
        submitDTO.setExecTime(finalCodeMessage.getTimes());
        submitDAOService.updateSubmit(submitDTO);
    }
}
