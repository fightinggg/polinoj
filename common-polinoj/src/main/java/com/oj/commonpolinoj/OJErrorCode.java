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
    ADMIN_ACCOUNT_COLUD_NOT_CNAHGE("000-001-000-003", "管理员账号不可修改"),


    // 000 - 002 login Service
    LOGIN_FAILED("000-002-000-000", "登录失败"),
    NO_LOGIN("000-002-000-001", "没有登录"),

    // 000 - 003 Problem Service
    NO_SUCH_PROBLEM("000-003-000-000", "没有这个题目"),


    // 000 - 004 submit Service
    SUBMIT_CODE_TOO_SHORT("000-004-000-000", "提交的代码太短了");


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
