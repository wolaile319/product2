package com.yhzj.entity;

import lombok.Getter;
import lombok.Setter;

/**
 * 描述:
 * 角色菜单
 *
 * @author mixue
 * @create 2018-06-06 18:06
 */
@Setter
@Getter
public class Menu extends BaseEntity{

    private String name;
    private String remark;
    /**
     * 菜单对应链接地址
     */
    private String url;
    /**
     * 父菜单
     */
    private Menu parent;

}
