package com.atchensong.dao.impl;

import com.atchensong.dao.PatientDao;
import com.atchensong.proj.Bed;
import com.atchensong.proj.Patient;

import java.util.List;

/**
 * @author: 赵程
 * @Date: 2023/01/08 15:32
 */
public class PatientDaoImpl extends BaseDao implements PatientDao {

    @Override
    public List<Patient> queryPatients() {
        String sql="SELECT v_patient.* FROM v_patient";
        return queryForList(Patient.class,sql);
    }
    //添加患者
    @Override
    public int addPatient(Patient patient) {
        String sql="insert into patient(pId,pName,pSex,pTime,pIllness,mid,bid)values(?,?,?,?,?,(SELECT mediciner.mId FROM mediciner WHERE mediciner.mName=?),?)";
        return update(sql,patient.getPid(), patient.getpName(),patient.getpSex(),patient.getpTime(),patient.getpIllness(),patient.getmName(),patient.getBid());
    }

    @Override
    public int addPatientAndUp(Patient patient) {
        String sql="UPDATE bed set bed.bedState='有人' WHERE ? IS NOT NULL AND bed.bid=?";
        return update(sql, patient.getBid(), patient.getBid());
    }

    @Override
    public List<Patient> queryMedPatients() {
        String sql="SELECT mediciner.mName FROM mediciner";
        return queryForList(Patient.class,sql);
    }

    //删除患者
    @Override
    public int delPatientById(Integer pid) {
        String sql="delete from patient where pid=?";
        return update(sql,pid);
    }

    @Override
    public int delPatientByIDAndUp(Integer pid) {
        String sql="UPDATE bed set bed.bedState='无人' WHERE (SELECT patient.bid FROM patient WHERE patient.pId =?) IS NOT NULL AND bed.bid=(SELECT patient.bid FROM patient WHERE patient.pId =?)";
        return update(sql,pid,pid);
    }
    //查询患者信息
    @Override
    public Patient queryPatientByIdInfo(Integer pid) {
        String sql="SELECT v_patient.* FROM v_patient WHERE v_patient.pId=?";
        return queryForOne(Patient.class,sql,pid);
    }
    //修改患者信息
    @Override
    public Patient queryPatientById(Integer pid) {
        String sql="SELECT v_patient.* FROM v_patient WHERE v_patient.pId =?";
        return queryForOne(Patient.class,sql,pid);
    }

    @Override
    public int UpdatePatient(Patient patient) {
        String sql="UPDATE patient,bed set patient.pName=?,patient.pSex=?,patient.pTime=?,patient.pIllness=?,patient.mid=(SELECT mediciner.mId FROM mediciner WHERE mediciner.mName=?),patient.bid=?,bed.bedState='有人' WHERE pid=?";
        return  update(sql,patient.getpName(),patient.getpSex(), patient.getpTime(), patient.getpIllness(), patient.getmName(),patient.getBid(),patient.getPid());
    }
}

