package com.yhzj.entity;

/**
 * 角色实体类
 * @author qinling
 * @version 2018/5/13 12:03
 */

public class Role extends BaseEntity{
    /**
     * 角色名称
     */
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
