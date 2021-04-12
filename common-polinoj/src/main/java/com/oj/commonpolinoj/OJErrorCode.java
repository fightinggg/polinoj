package com.oj.commonpolinoj;


/**
 * 应用 - 服务 - api - 递增
 * xxx-xxx-xxx-xxx
 */
public enum OJErrorCode {

    // 000 Polin OJ

    // 000 - 000 common
    UNKNOWN_ERROR("000-000-000-000", "未知异常"),
    UN_SUPPORT_ERROR("000-000-000-001", "对不起暂不支持"),

    // 000 - 001 User Service
    CREATE_USER_FAILED("000-001-000-000", "创建用户失败"),
    NO_SUCH_USER("000-001-000-001", "没有这个用户"),

    ;


    String code;

    String msg;

    OJErrorCode(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }


    public String getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }

}
