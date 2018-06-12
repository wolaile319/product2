package com.yhzj.entity;

import lombok.Getter;
import lombok.Setter;

import java.sql.Time;
import java.util.Date;

/**
 * 描述:
 * 日考勤记录
 *
 * @author mixue
 * @create 2018-06-06 18:11
 */
@Getter
@Setter
public class DayAttendanceRecords extends BaseEntity{
    private Staff staff;
    /**
     * 考勤编号
     */
    private Integer attendanceId;
    /**
     * 签到
     */
    private Time signIn;
    /**
     * 签退
     */
    private Time signOut;
    /**
     * 日期
     */
    private Date date;
}
