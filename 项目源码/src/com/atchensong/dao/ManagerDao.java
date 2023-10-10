package com.atchensong.dao;

import com.atchensong.proj.Manager;

public interface ManagerDao {
    Manager queryUserByUsernameAndPassword(String account, String password); //登陆的实体接口
    //登录


}
