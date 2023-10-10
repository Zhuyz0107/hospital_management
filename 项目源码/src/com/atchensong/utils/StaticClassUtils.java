package com.atchensong.utils;

import com.atchensong.dao.RegisterDao;
import com.atchensong.dao.impl.RegisterDaoImpl;
import com.atchensong.proj.Register;
import com.atchensong.service.RegisterService;
import com.atchensong.service.impl.RegisterServiceImpl;

/**
 * @className: StaticClassUtils.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/09 下午 05:41
 */
public class StaticClassUtils {
    //不用每次使用时都要声明创建对象
    public static final RegisterService REGISTER_SERVICE = new RegisterServiceImpl();
    public static final RegisterDao REGISTER_DAO = new RegisterDaoImpl();
}
