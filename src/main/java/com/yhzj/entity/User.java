package com.yhzj.entity;



public class User {
    /**
     * 用户姓名
     */
    private String name;
    /**
     * 用户性别
     */
    private String sex;
    /**
     * 用户出生年月
     */
    private String bron;
    /**
     * 用户地址
     */
    private String address;
    /**
     * 用户电话
     */
    private String phone;
    /**
     * 用户对应的账号
     */


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

    public String getBron() {
        return bron;
    }

    public void setBron(String bron){
        this.bron=bron;

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




}
