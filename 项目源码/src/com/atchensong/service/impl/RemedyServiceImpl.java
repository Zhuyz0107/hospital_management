package com.atchensong.service.impl;

import com.atchensong.dao.RemedyDao;
import com.atchensong.dao.impl.RemedyDaoImpl;
import com.atchensong.proj.Remedy;
import com.atchensong.service.RemedyService;

import java.util.List;

public class RemedyServiceImpl implements RemedyService {
    RemedyDao dao=new RemedyDaoImpl();
    @Override
    public List<Remedy> queryAll() {
        return dao.queryRemedys();
    }

    @Override
    public int addRemedy(Remedy remedy) {
        return dao.addRemedy(remedy);
    }

    @Override
    public int delRemedyById(Integer rId) {
        return dao.delRemedyById(rId);
    }

    @Override
    public int UpdateRemedy(Remedy remedy) {
        return dao.UpdateRemedy(remedy);
    }

    @Override
    public Remedy queryRemedyById(Integer rId) {
        return dao.queryRemedyById(rId);
    }

    @Override
    public Remedy queryRemedyByName(String rName) {
        return dao.queryRemedyByName(rName);
    }

    @Override
    public List<Remedy> RemedyNum() {
        return dao.RemedyNum();
    }


}
