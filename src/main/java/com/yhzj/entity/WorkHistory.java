package com.yhzj.entity;

import lombok.Getter;
import lombok.Setter;

/**
 * 描述:
 * 工作经历
 *
 * @author mixue
 * @create 2018-06-06 18:11
 */
@Getter
@Setter
public class WorkHistory extends BaseEntity {
    private String company;
    private String job;
    /**
     * 入职日期
     */
    private String entryDate;
    /**
     * 离职日期
     */
    private String leaveDate;
    /**
     * 职位描述
     */
    private String JobDescription;
    /**
     * 工资
     */
    private Long salary;
}
