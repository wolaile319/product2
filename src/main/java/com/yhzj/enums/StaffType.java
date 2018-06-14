package com.yhzj.enums;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

/**
 * 描述:
 * 员工类型
 *
 * @author mixue
 * @create 2018-06-06 18:15
 */
@Getter
@AllArgsConstructor
public enum StaffType {
    FULLTIME("全职"),
    INTERNSHIP("实习"),
    PARTTIME("兼职");
    private String name;
}
