package com.yhzj.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * 描述:
 * 用户角色
 *
 * @author mixue
 * @create 2018-06-06 18:06
 */
@Getter
@Setter
public class Role extends BaseEntity{
    private String name;
    private String remark;
    private List<Menu> menus;
}
