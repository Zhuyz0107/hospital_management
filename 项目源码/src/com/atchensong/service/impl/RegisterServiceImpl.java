package com.atchensong.service.impl;

import com.atchensong.dao.RegisterDao;
import com.atchensong.dao.impl.RegisterDaoImpl;
import com.atchensong.proj.Register;
import com.atchensong.service.RegisterService;
import com.atchensong.utils.StaticClassUtils;

import java.util.List;

/**
 * @className: RegisterServiceImpl.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/09 下午 05:23
 */
public class RegisterServiceImpl implements RegisterService {
    @Override
    public int addRegister(Register register) {
        return StaticClassUtils.REGISTER_DAO.addRegister(register);
    }

    @Override
    public List<Register> queryAllRegister() {
        return StaticClassUtils.REGISTER_DAO.queryAllRegister();
    }

    @Override
    public Register queryRegisterById(int id) {
        return StaticClassUtils.REGISTER_DAO.queryRegisterById(id);
    }

    @Override
    public void deleteRegisterById(int id) {
        int result = StaticClassUtils.REGISTER_DAO.deleteRegisterById(id);
        if (result!=-1){
            System.out.println("编号"+id+":删除成功");
        }else {
            System.out.println("删除失败");
        }
    }
}
