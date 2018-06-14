package com.yhzj.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 描述:
 * 合同类型
 *
 * @author mixue
 * @create 2018-06-07 18:27
 */
@Getter
@AllArgsConstructor
public enum ContractType {
    SERVICE("劳务合同"),
    LABOUR("劳动合同"),
    PRACTICE("实习合同"),
    UNFIXEDTERMLABOR("无固定期限劳动合同"),
    OTHER("其他合同");
    private String name;
}
