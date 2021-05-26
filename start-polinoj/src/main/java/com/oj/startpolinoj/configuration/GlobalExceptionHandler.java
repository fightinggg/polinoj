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
        return HttpResult.failed(OJErrorCode.UNKNOWN_ERROR.getCode(), e.getMessage());
    }

    @ExceptionHandler(OJException.class)
    <T> HttpResult<T> handlerException(OJException ojException) {
        log.error("http request handler failed: ", ojException);
        return HttpResult.failed(ojException.getCode(), ojException.getMsg());
    }
}
