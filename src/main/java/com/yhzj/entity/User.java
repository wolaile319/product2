package com.yhzj.entity;

import javax.validation.constraints.NotEmpty;

/**
 * 描述:
 * hr-oa系统使用用户
 *
 * @author mixue
 * @create 2018-06-06 18:06
 */
public class User extends BaseEntity{
    @NotEmpty(message = "用户账号不能为空")
    private String account;
    private String password;
    private Integer status;
    private Role role;
    private Staff staff;
}
