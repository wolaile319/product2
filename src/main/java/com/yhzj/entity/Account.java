package com.yhzj.entity;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

/**
 * 账号实体类
 * @author qinling
 * @version 2018/5/14 16:33
 */

public class Account extends BaseEntity{
    /**
     * 账号名称
     */
    @NotNull(message ="账号不能为空")
    @NotBlank(message = "账号不能为空字符串")
    private String name;
    /**
     * 密码(不需要开始和结束呼号)
     */
    @Pattern(regexp = "^[0-9A-Za-z]{6,}$",message = "密码必须6位以上")
    private String password;
    /**
     * 状态（0：正常；1：禁用）
     */
    private Integer state;
    /**
     * 角色
     */
    private Role role;

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
