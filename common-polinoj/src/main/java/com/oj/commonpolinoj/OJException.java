package com.oj.commonpolinoj;

import lombok.Getter;

@Getter
public class OJException extends RuntimeException {
    private String code;
    private String msg;

    private OJException() {

    }


    public static OJException buildOJException(OJErrorCode ojErrorCode) {
        OJException ojException = new OJException();
        ojException.code = ojErrorCode.getCode();
        ojException.msg = ojErrorCode.getMsg();
        return ojException;
    }

    public static OJException buildOJException(OJErrorCode ojErrorCode, String msg) {
        OJException ojException = new OJException();
        ojException.code = ojErrorCode.getCode();
        ojException.msg = ojErrorCode.getMsg() + "\n" + msg;
        return ojException;
    }
}
