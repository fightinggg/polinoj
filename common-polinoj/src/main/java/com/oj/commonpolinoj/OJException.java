package com.oj.commonpolinoj;

public class OJException extends RuntimeException {
    private OJErrorCode ojErrorCode;


    public String getCode() {
        return ojErrorCode.getCode();
    }

    public String getMsg() {
        return ojErrorCode.getMsg();
    }

    private OJException() {

    }


    public static OJException buildOJException(OJErrorCode ojErrorCode) {
        OJException ojException = new OJException();
        ojException.ojErrorCode = ojErrorCode;
        return ojException;
    }
}
