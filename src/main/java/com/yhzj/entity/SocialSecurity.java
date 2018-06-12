package com.yhzj.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 描述:
 * 社保信息
 * @author mixue
 * @create 2018-06-09 14:31
 */
@Getter
@Setter
public class SocialSecurity extends BaseEntity{
    /**
     * 社保账号
     */
    private String account;
    /**
     * 社保缴纳地省
     */
    private String province;
    /**
     * 社保缴纳地城市
     */
    private String city;
    /**
     * 社保起始日期
     */
    private Date startTime;
}
