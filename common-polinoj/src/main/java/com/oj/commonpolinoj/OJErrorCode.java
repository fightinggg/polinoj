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
    DUPLICATE_PROBLEM("000-003-000-001", "重复的题目"),


    // 000 - 004 submit Service
    SUBMIT_CODE_TOO_SHORT("000-004-000-000", "提交的代码太短了"),

    // 000-005 cos方面
    UPLOAD_FAILED("000-005-000-000", "上传文件失败"),
    ZIPFILE_EVEN_ERROR("000-005-000-001", "zip中文件数量不是偶数"),
    ZIPFILE_NAME_ERROR("000-005-000-002", "zip中文件名称不匹配"),
    NOFUND_FILE_IN_ZIPFILE("000-005-000-003", "zip中找不到文件"),
    DOWNLOAD_FAILED("000-005-000-004", "下载失败"),

    // 000-006 context
    CONTEXT_NOT_BEGIN("000-006-000-000", "比赛没有开始"),
    CONTEXT_NOT_EXIST("000-006-000-001", "比赛不存在"),
    NO_JOIN_CONTEXT("000-006-000-002", "你没有报名这个比赛");

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
