package com.atchensong.service;

import com.atchensong.proj.Bed;
import com.atchensong.proj.Patient;

import java.util.List;

/**
 * @author: 赵程
 * @Date: 2023/01/08 15:42
 */
public interface PatientService {
    public List<Patient> queryAll();
    public int addPatient(Patient patient);
    public int delPatientById(Integer pid);
    public List<Patient> queryMem();
    public Patient queryPatientByIdInfo(Integer pid);
    public Patient queryPatientById(Integer pid);
    public int UpdatePatient(Patient patient);
}
