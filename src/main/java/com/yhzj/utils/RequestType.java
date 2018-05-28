package com.yhzj.utils;

import javax.servlet.http.HttpServletRequest;

/**
 * 判断请求的类型
 * @author qinling
 * @version 2018/5/27 18:05
 */

public final class RequestType {
    private RequestType(){}
    /**
     * 判断是否为ajax请求;是：返回true
     * @param request
     * @return
     */
    public static boolean isAjax(HttpServletRequest request){
        String header = request.getHeader(Constant.AJAX_HEADER);
        return Constant.XMLHTTP_REQUEST.equals(header);
    }
}
