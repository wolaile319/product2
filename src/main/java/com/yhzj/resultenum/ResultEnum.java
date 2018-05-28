package com.yhzj.resultenum;

/**
 * 枚举；集中处理ajax请求的返回的信息（便于维护）
 * @author qinling
 * @version 2018/5/27 18:23
 */
public enum ResultEnum {
    UNKNOW_ERROR(-1,"系统未知错误"),
    SUCCESS(200,"操作成功"),
    ADD_ERROR(400,"添加失败"),
    EDIT_ERROR(400,"编辑失败"),
    DEL_ERROR(400,"删除失败"),
    NO_LOGIN(405,"未登录");
    private  Integer code;
    private String message;

    public Integer getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }

    ResultEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}

