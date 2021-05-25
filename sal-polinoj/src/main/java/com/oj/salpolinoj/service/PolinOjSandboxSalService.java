package com.oj.salpolinoj.service;

import com.alibaba.fastjson.JSON;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.polinojsandbox.openapi.*;
import lombok.extern.slf4j.Slf4j;
import okhttp3.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Objects;


@Slf4j
@Component
public class PolinOjSandboxSalService {

    @Autowired
    PolinojSandboxProperties polinojSandboxProperties;

    @Autowired
    private KafkaTemplate<Object, Object> template;

    public void submitCode(SubmitCodeMessage submitCodeMessage) {
        template.send(KafkaTopicConsts.submitCodeTopic, submitCodeMessage);
    }
}
