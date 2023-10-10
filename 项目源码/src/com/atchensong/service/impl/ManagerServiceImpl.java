package com.atchensong.service.impl;

import com.atchensong.dao.ManagerDao;
import com.atchensong.dao.impl.ManagerDaoImpl;
import com.atchensong.proj.Manager;
import com.atchensong.service.ManagerService;

public class ManagerServiceImpl implements ManagerService {
    ManagerDao dao = new ManagerDaoImpl();

    @Override
    public Manager login(Manager manager) {
        return dao.queryUserByUsernameAndPassword(manager.getAccount(),manager.getPassword());
    }
}

