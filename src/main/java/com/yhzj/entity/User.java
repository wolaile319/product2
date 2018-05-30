package com.yhzj.entity;

import com.alibaba.fastjson.JSON;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.util.Date;

/**
 * 用户实体类
 * @author qinling
 * @version 2018/5/13 11:59
 */

public class User extends BaseEntity {
    /**
     * 姓名
     */
    @NotNull(message = "用户名必填")
    @NotBlank(message = "用户名不能为空")
    private String name;
    /**
     * 性别
     */
    private String sex;
    /**
     * 出生日期
     */
   // @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date bron;
    /**
     * 家庭地址
     */
    private String address;
    /**
     * 电话号码
     */
    @Pattern(regexp ="^1[3,4,5,7,8]\\d{9}$",message = "手机号码格式不对")
    private String phone;
    /**
     * 账号
     */
    @Valid
    private Account account;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBron() {
        return bron;
    }

    public void setBron(Date bron) {
        this.bron = bron;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

}
