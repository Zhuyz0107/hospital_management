package com.atchensong.dao.impl;

import com.atchensong.dao.RegisterDao;
import com.atchensong.proj.Register;
import com.atchensong.utils.StaticClassUtils;

import java.util.List;

/**
 * @className: RegisterDaoImpl.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/09 下午 05:12
 */
public class RegisterDaoImpl extends BaseDao implements RegisterDao {
    @Override
    public int addRegister(Register register) {
        String sql = "insert into register(rname,rgender,rage,rtime,problem,dName,dResponsible) values(?,?,?,?,?,?,?)";
        return update(sql, register.getRname(), register.getRgender(), register.getRage(), register.getRtime(), register.getProblem(), register.getdName(), register.getdResponsible());
    }

    @Override
    public List<Register> queryAllRegister() {
        String sql = "select * from register";
        return queryForList(Register.class, sql);
    }

    @Override
    public Register queryRegisterById(int id) {
        String sql = "select * from register where rid = ?";
        return queryForOne(Register.class, sql, id);
    }

    @Override
    public int deleteRegisterById(int id) {
        String sql = "delete from register where rid=?";
        return update(sql,id);
    }
}
