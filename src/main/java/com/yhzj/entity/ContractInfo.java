package com.yhzj.entity;

import com.yhzj.enums.ContractType;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 描述:
 * 合同信息
 *
 * @author mixue
 * @create 2018-06-06 18:09
 */
@Getter
@Setter
public class ContractInfo extends BaseEntity {
    /**
     * 合同类型
     */
    private ContractType type;
    /**
     * 合同起始日期
     */
    private Date startDate;
    /**
     * 合同结束日期
     */
    private Date endDate;
    /**
     * 试用期到期日
     */
    private Date probationEndDate;
    /**
     * 试用期月数
     */
    private Integer probationMonth;
    private Staff staff;
}
