package com.yhzj.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 描述:
 * 基本类
 *
 * @author mixue
 * @create 2018-06-06 18:14
 */
@Getter
@Setter
public class BaseEntity {
    private Integer id;
    private Date createAt;
    private Date updateAt;
    private Integer version;
}
