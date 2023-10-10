package com.atchensong.dao;

import com.atchensong.proj.Patient;

import java.util.List;

/**
 * @author: 赵程
 * @Date: 2023/01/08 15:31
 */
public interface PatientDao {
    public List<Patient> queryPatients();
    //添加患者
    public int addPatient(Patient patient);
    public int addPatientAndUp(Patient patient);
    public List<Patient> queryMedPatients();
    //删除患者
    public  int  delPatientById(Integer pid);
    public int delPatientByIDAndUp(Integer pid);
    //查询患者信息
    public Patient queryPatientByIdInfo(Integer pid);
    //修改患者信息
    public Patient queryPatientById(Integer pid);
    public int UpdatePatient(Patient patient);
}
