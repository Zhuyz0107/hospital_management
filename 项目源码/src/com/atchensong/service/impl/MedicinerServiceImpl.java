package com.atchensong.service.impl;

import com.atchensong.dao.MedicinerDao;
import com.atchensong.dao.impl.MedicinerDaoImpl;
import com.atchensong.proj.Mediciner;
import com.atchensong.service.MedicinerService;

import java.util.List;

public class MedicinerServiceImpl implements MedicinerService {
    MedicinerDao dao=new MedicinerDaoImpl();
    @Override
    public List<Mediciner> queryAll() {
        return dao.queryMediciners();
    }

    @Override
    public int addMediciner(Mediciner mediciner) {
        return dao.addMediciner(mediciner);
    }

    @Override
    public int UpdateMediciner(Mediciner mediciner) {
        return dao.UpdateMediciner(mediciner);
    }

    @Override
    public int delMediciner(Integer mid) {
        return dao.delMediciner(mid);
    }

    @Override
    public Mediciner queryMedicinerByName(String mName) {
        return dao.queryMedicinerByName(mName);
    }

    @Override
    public List<Mediciner> SelectAge() {
        return dao.SelectAge();
    }

    @Override
    public Mediciner queryMedicinerById(Integer mid) {
        return dao.queryMedicinerById(mid);
    }
}
