package com.yhzj.entity;

import lombok.Getter;
import lombok.Setter;

import java.sql.Time;
import java.util.Date;

/**
 * 描述:
 * 月考勤记录
 *
 * @author mixue
 * @create 2018-06-06 18:12
 */
@Getter
@Setter
public class MonthAttendanceRecords extends BaseEntity{
    private Staff staff;
    /**
     * 年份
     */
    private Integer year;
    /**
     * 月份
     */
    private Integer month;
    /**
     * 应出勤天数
     */
    private Float shouldWorkDays;
    /**
     * 实际出勤天数
     */
    private Float realWorkDays;
    /**
     * 实际出勤小时数
     */
    private Float realWorkHours;
    /**
     * 事假
     */
    private Float unpaidLeave;
    /**
     * 病假
     */
    private Float sickLeave;
    /**
     * 婚假
     */
    private Float marriageLeave;
    /**
     * 产假
     */
    private Float maternityLeave;
    /**
     * 产检假
     */
    private Float prenatalCheckUp;
    /**
     * 陪产假
     */
    private Float paternityLeave;
    /**
     * 休年假
     */
    private Float annualLeave;
    /**
     * 迟到次数
     */
    private Integer lateCount;
    /**
     * 早退次数
     */
    private Integer earlyRetreatCount;
    /**
     * 缺勤次数
     */
    private Integer absenceCount;
    /**
     * 忘签到次数
     */
    private Integer forgetSignInCount;
    /**
     * 忘签退次数
     */
    private Integer forgetSignOutCount;
    /**
     * 工作外出
     */
    private Float workOut;
    /**
     * 出差
     */
    private Float businessTrip;
    /**
     * 平常加班
     */
    private Float normalOvertimeWork;
    /**
     * 周末加班
     */
    private Float weekendWork;
    /**
     * 法定节假日加班
     */
    private Float legalHolidayWork;
}
