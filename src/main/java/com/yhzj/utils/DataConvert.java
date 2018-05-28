package com.yhzj.utils;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 将字符串按需自动转化为Data格式
 * @author qinling
 * @version 2018/5/27 15:39
 */
public class DataConvert implements Converter<String,Date>{
    @Override
    public Date convert(String source) {
        SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date date = format.parse(source);
            return date;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
}
