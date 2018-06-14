package com.yhzj.entity;

import lombok.Getter;
import lombok.Setter;

/**
 * 描述:
 * 部门
 *
 * @author mixue
 * @create 2018-06-06 18:08
 */
@Getter
@Setter
public class Department extends BaseEntity {
    private String name;
    /**
     * 在职人数
     */
    private Integer workingCount;
    /**
     * 编制人数、部门计划人数
     */
    private Integer planCount;
    /**
     * 部门领导、负责人
     */
    private String leader;
}
