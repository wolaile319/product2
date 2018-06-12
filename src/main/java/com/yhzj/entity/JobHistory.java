package com.yhzj.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.MappedSuperclass;
import javax.persistence.Table;
import java.util.Date;

/**
 * 描述:
 * 工作经历信息
 *
 * @author mixue
 * @create 2018-06-09 15:23
 */
@Getter
@Setter
public class JobHistory extends BaseEntity {
    private Staff staff;
    private String company;
    private String job;
    private Date entryDate;
    private Date leaveDate;
    private String JobDescribe;
}
