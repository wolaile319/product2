package com.yhzj.entity;

import lombok.Getter;
import lombok.Setter;

/**
 * 描述:
 * 职位
 *
 * @author mixue
 * @create 2018-06-06 18:08
 */
@Getter
@Setter
public class Job extends BaseEntity{
    private String name;
    private Department department;
    /**
     * 编制人数
     */
    private Integer planCount;
    /**
     * 在职人数
     */
    private Integer workingCount;
    /**
     * 任职资格描述
     */
    private String qualification;
    /**
     * 职位描述
     */
    private String remark;
    /**
     * 职务
     */
   // private Duties duties;
    /**
     * 职级
     */
    //private Rank rank;


}
