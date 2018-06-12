package com.yhzj.entity;

import cn.oa.HR.enums.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 描述:
 * 员工实体
 *
 * @author mixue
 * @create 2018-06-06 18:05
 */
@Getter
@Setter
public class Staff extends BaseEntity {
    private String name;
    private String phone;
    private Job job;
    private Sex sex;
    private Date birthday;
    private String address;
    private String photo;
    private String email;
    private String remark;
    private String qq;
    private String wechat;
    /**
     * 姓
     */
    private String surname;
    /**
     * 名
     */
    private String firstName;
    /**
     * 证件类型
     */
    private IdType idType;
    /**
     * 证件号码
     */
    private String idNumber;
    /**
     * 工号
     */
    private String jobNumber;
    /**
     * 学历
     */
    private Qualification qualification;
    /**
     * 员工状态
     */
    private StaffStatus status;
    /**
     * 员工类型
     */
    private StaffType type;
    /**
     * 入职日期
     */
    private Date entryDate;
    /**
     * 薪资信息
     */
    private SalaryInfo salaryInfo;
    /**
     * 离职日期
     */
    private Date leaveDate;
    /**
     * 民族
     */
    private String national;
    /**
     * 户口类型
     */
    private HukouType hukou;
    /**
     * 户口所在地
     */
    private String hukouAddress;
    /**
     * 现居住地址
     */
    private String livingAddress;
    /**
     * 政治面貌
     */
    private Political political;
    /**
     * 婚姻状况
     */
    private MaritalStatus marital;
    /**
     * 血型
     */
    private BloodType blood;
    /**
     * 紧急联系人
     */
    private String emergencyContact;
    /**
     * 紧急联系人电话
     */
    private String emergencyPhone;
    /**
     * 社保信息
     */
    private SocialSecurity socialSecurity;
    /**
     * 公积金信息
     */
    private AccumulationFund accumulationFund;

}
