package com.atchensong.dao.impl;

import com.atchensong.dao.ManagerDao;
import com.atchensong.proj.Manager;

public class ManagerDaoImpl extends BaseDao implements ManagerDao {


    @Override
    public Manager queryUserByUsernameAndPassword(String account, String password) {
        String sql = "SELECT * FROM admin WHERE adminName=? AND adminPassword=?";
        return queryForOne(Manager.class,sql,account,password);
    }
}
