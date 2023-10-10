package com.atchensong.dao;

import com.atchensong.proj.Register;

import java.util.List;

/**
 * @className: RegisterDao.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/09 下午 05:12
 */
public interface RegisterDao {
    int addRegister(Register register);
    List<Register> queryAllRegister();
    Register queryRegisterById(int id);
    int deleteRegisterById(int id);
}
