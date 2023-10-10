package com.atchensong.utils;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 * @className: DateUtils.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/08 下午 07:22
 */
public class DateUtils {
    public static Date stringToSqlDate(String date) throws ParseException {
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date date1=sdf.parse(date);
        long time=date1.getTime();
        java.sql.Date date2=new java.sql.Date(time);
        return date2;
    }
}
