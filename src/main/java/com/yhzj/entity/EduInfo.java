package com.yhzj.entity;

import com.yhzj.enums.Qualification;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 描述:
 * 教育信息
 *
 * @author mixue
 * @create 2018-06-06 18:10
 */
@Getter
@Setter
public class EduInfo extends BaseEntity {
    private Staff staff;
    private String school;
    /**
     * 专业
     */
    private String major;
    /**
     * 入校时间
     */
    private Date entranceTime;
    /**
     * 毕业时间
     */
    private Date graduationTime;
    /**
     * 学历
     */
    private Qualification qualification;
    /**
     * 是否取得学位
     */
    private Byte degreeStatus;
    /**
     * 毕业证书照片1
     */
    private String diplomaPhoto1;
    /**
     * 毕业证书照片2
     */
    private String diplomaPhoto2;
    /**
     * 学位证书照片1
     */
    private String degreePhoto1;
    /**
     * 学位证书照片2
     */
    private String degreePhoto2;
}
