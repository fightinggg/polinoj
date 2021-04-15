package com.oj.commonpolinoj;

import lombok.Data;

@Data
public class HttpResult<T> {
    Boolean success;
    String code;
    String msg;
    T data;

    private HttpResult(){

    }

    public static <T> HttpResult<T> success(T data){
        HttpResult<T> httpResult = new HttpResult<>();
        httpResult.setSuccess(true);
        httpResult.setData(data);
        return httpResult;
    }

    public static <T> HttpResult<T> failed(OJErrorCode ojErrorCode){
        HttpResult<T> httpResult = new HttpResult<>();
        httpResult.setSuccess(false);
        httpResult.setCode(ojErrorCode.getCode());
        httpResult.setMsg(ojErrorCode.getMsg());
        return httpResult;
    }

    public static <T> HttpResult<T> failed(String code,String msg){
        HttpResult<T> httpResult = new HttpResult<>();
        httpResult.setSuccess(false);
        httpResult.setCode(code);
        httpResult.setMsg(msg);
        return httpResult;
    }
}
