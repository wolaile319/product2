package com.yhzj.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 描述:
 * 薪资信息
 *
 * @author mixue
 * @create 2018-06-06 18:13
 */
@Getter
@Setter
public class SalaryInfo extends BaseEntity{
    /**
     * 转正薪资
     */
    private Long startSalary;
    /**
     * 试用期薪资
     */
    private Long probationSalary;
    /**
     * 当前薪资
     */
    private Long currentSalary;
    /**
     * 最近一次调薪日期
     */
    private Date lastChangeSalaryTime;
    /**
     * 最近一次调薪金额
     */
    private Long lastChangeSalaryMoney;
    /**
     * 工资卡开户行
     */
    private String bankName;
    /**
     * 工资卡号
     */
    private String bankCardNo;

}
