package com.yhzj.entity;

/**
 * 返回的最外层结果
 * @author qinling
 * @version 2018/5/25 22:21
 */

public class Result<T> {
    //返回的状态码
    private Integer code;
    //返回的信息
    private String message;
    //返回的数据
    private T date;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getDate() {
        return date;
    }

    public void setDate(T date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Result{" +
                "code=" + code +
                ", message='" + message + '\'' +
                ", date=" + date +
                '}';
    }
}