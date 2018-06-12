package com.yhzj.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 描述:
 * 员工状态
 *
 * @author mixue
 * @create 2018-06-09 14:55
 */
@Getter
@AllArgsConstructor
public enum StaffStatus {
    ONJOB("全职"),
    LEAVEJOB("离职"),
    PROBATION("试用"),
    PREONJOB("待入职"),
    PRELEAVEJOB("待离职");
    private String name;
}
