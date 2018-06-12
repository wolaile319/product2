package com.yhzj.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 描述:
 * 公积金信息
 *
 * @author mixue
 * @create 2018-06-09 14:31
 */
@Getter
@Setter
public class AccumulationFund extends BaseEntity {
    /**
     * 公积金账号
     */
    private String account;
    /**
     * 公积金缴纳地省
     */
    private String province;
    /**
     * 公积金缴纳地城市
     */
    private String city;
    /**
     * 公积金起始日期
     */
    private Date startTime;
}
