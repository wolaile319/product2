package com.yhzj.utils;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 用于配置request，response的编码
 * @author qinling
 * @version 2018/5/12 17:39
 */

public class EncodingDispatcherServlet extends DispatcherServlet{
    private String encoding = DEFAULT_ENCODING;

    public EncodingDispatcherServlet(WebApplicationContext context){
        super(context);
    }

    public EncodingDispatcherServlet(){
    }

    public EncodingDispatcherServlet(WebApplicationContext context, String encoding){
        super(context);
        this.encoding = encoding;
    }

    public static final String DEFAULT_ENCODING = "UTF-8";

    @Override
    protected void  doService(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding(DEFAULT_ENCODING);
        response.setCharacterEncoding(DEFAULT_ENCODING);
        super.doService(request, response);
    }

    public String getEncoding() {
        return encoding;
    }

    public void setEncoding(String encoding) {
        this.encoding = encoding;
    }
}

