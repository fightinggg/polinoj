package com.oj.salpolinoj.service;

import com.alibaba.fastjson.JSON;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.commonpolinoj.enums.SubmitStatus;
import com.oj.polinojsandbox.openapi.*;
import lombok.extern.slf4j.Slf4j;
import okhttp3.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Comparator;
import java.util.Objects;
import java.util.stream.Stream;

@Slf4j
@Component
public class PolinOjSandboxSalService {

    @Autowired
    PolinojSandboxProperties polinojSandboxProperties;

    public SubmitDTO submitCode(SampleTestRequestDTO sampleTestRequestDTO) {
        OkHttpClient client = new OkHttpClient().newBuilder()
                .build();
        MediaType mediaType = MediaType.parse("application/json");
        String bodyString = JSON.toJSONString(sampleTestRequestDTO);
        log.info("requestBody: {}", bodyString);
        RequestBody body = RequestBody.create(mediaType, bodyString);
        Request request = new Request.Builder()
                .url(polinojSandboxProperties.getUrl())
                .method("POST", body)
                .addHeader("Content-Type", "application/json")
                .build();
        try {
            Response response = client.newCall(request).execute();
            final ResponseBody responseBody = response.body();
            assert responseBody != null;
            final String result = responseBody.string();
            log.info("responseBody : {}", result);
            final SampleTestResponseDTO resultDTO = JSON.parseObject(result, SampleTestResponseDTO.class);

            SubmitDTO submitDTO = new SubmitDTO();
            submitDTO.setStatus(SubmitStatus.PENDING.getCode());
            submitDTO.setSourceSubmitId
                    (resultDTO.getId());
            return submitDTO;
        } catch (IOException e) {
            log.error("", e);
            throw OJException.buildOJException(OJErrorCode.UNKNOWN_ERROR, e.getMessage());
        }
    }


    public SubmitDTO getStatus(String id) {
        OkHttpClient client = new OkHttpClient().newBuilder()
                .build();
        String getUrl = polinojSandboxProperties.getUrl() + "/" + id;
        log.info("requestUrl: {}", getUrl);
        Request request = new Request.Builder()
                .url(getUrl)
                .method("GET", null)
                .build();
        try {
            Response response = client.newCall(request).execute();
            final ResponseBody responseBody = response.body();
            assert responseBody != null;
            final String result = responseBody.string();
            log.info("responseBody : {}", result);
            final SampleTestResultDTO sampleTestResultDTO = JSON.parseObject(result, SampleTestResultDTO.class);
            SubmitDTO submitDTO = new SubmitDTO();
            final Integer maxTime = sampleTestResultDTO.getSampleTestResults().stream()
                    .map(SampleTestResult::getTimes).filter(Objects::nonNull)
                    .max(Integer::compareTo).orElse(0);
            final Integer maxMem = sampleTestResultDTO.getSampleTestResults().stream()
                    .map(SampleTestResult::getMemory).filter(Objects::nonNull)
                    .max(Integer::compareTo).orElse(0);
            submitDTO.setExecTime(maxTime.longValue());
            submitDTO.setExecMemory(maxMem.longValue());
            submitDTO.setStatus(sampleTestResultDTO.getStatus());
            return submitDTO;
        } catch (IOException e) {
            log.error("", e);
            throw OJException.buildOJException(OJErrorCode.UNKNOWN_ERROR, e.getMessage());
        }
    }
}
