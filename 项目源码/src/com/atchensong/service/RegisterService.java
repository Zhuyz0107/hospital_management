package com.atchensong.service;

import com.atchensong.proj.Register;

import java.util.List;

/**
 * @className: RegisterService.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/09 下午 05:22
 */
public interface RegisterService {
    int addRegister(Register register);
    List<Register> queryAllRegister();
    Register queryRegisterById(int id);
    void deleteRegisterById(int id);
}
