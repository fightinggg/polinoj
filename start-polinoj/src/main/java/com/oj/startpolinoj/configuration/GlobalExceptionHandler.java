package com.oj.startpolinoj.configuration;

import com.oj.commonpolinoj.HttpResult;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(Exception.class)
    <T> HttpResult<T> handlerException(Exception e) {
        log.error("http request handler failed: ", e);

        HttpResult<T> httpResult = new HttpResult<>();
        httpResult.setSuccess(false);
        OJErrorCode ojErrorCode = OJErrorCode.UNKNOWN_ERROR;
        httpResult.setCode(ojErrorCode.getCode());
        httpResult.setMsg(ojErrorCode.getMsg() + "\n" + e.getMessage());
        return httpResult;
    }

    @ExceptionHandler(OJException.class)
    <T> HttpResult<T> handlerException(OJException ojException) {
        HttpResult<T> httpResult = new HttpResult<>();
        httpResult.setSuccess(false);
        httpResult.setCode(ojException.getCode());
        httpResult.setMsg(ojException.getMsg());
        return httpResult;
    }
}
