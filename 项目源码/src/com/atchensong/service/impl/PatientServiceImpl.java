package com.atchensong.service.impl;

import com.atchensong.dao.PatientDao;
import com.atchensong.dao.impl.PatientDaoImpl;
import com.atchensong.proj.Patient;
import com.atchensong.service.PatientService;

import java.util.List;

/**
 * @author: 赵程
 * @Date: 2023/01/08 15:42
 */
public class PatientServiceImpl implements PatientService {
    PatientDao dao=new PatientDaoImpl();

    @Override
    public List<Patient> queryAll() {
        return dao.queryPatients();
    }

    @Override
    public int addPatient(Patient patient) {
        dao.addPatientAndUp(patient);
        return dao.addPatient(patient);
    }

    @Override
    public int delPatientById(Integer pid) {
        dao.delPatientByIDAndUp(pid);
        return dao.delPatientById(pid);
    }

    @Override
    public List<Patient> queryMem() {
        return dao.queryMedPatients();
    }

    @Override
    public Patient queryPatientByIdInfo(Integer pid) {
        return  dao.queryPatientByIdInfo(pid);
    }

    @Override
    public Patient queryPatientById(Integer pid) {
        return dao.queryPatientById(pid);
    }

    @Override
    public int UpdatePatient(Patient patient) {
        return dao.UpdatePatient(patient);
    }

}
