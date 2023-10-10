package com.atchensong.proj;

import java.sql.Date;

/**
 * @author: 赵程
 * @Date: 2023/01/08 15:27
 */
public class Patient {
    private Integer pid;
    private String pName;
    private String pSex;
    private String pTime;
    private String pIllness;
    private String mName;
    private String dName;
    private Integer bid;
    private Integer mid;


    public Patient(){}

    public Patient(String mName) {
        this.mName = mName;
    }

    public Patient(Integer pid, String pName, String pSex, String pTime, String pIllness, String mName, String dName, Integer bid) {
        this.pid = pid;
        this.pName = pName;
        this.pSex = pSex;
        this.pTime = pTime;
        this.pIllness = pIllness;
        this.mName = mName;
        this.dName = dName;
        this.bid = bid;
    }
    public Patient(Integer pid, String pName, String pSex, String pTime, String pIllness, String mName,  Integer bid) {
        this.pid = pid;
        this.pName = pName;
        this.pSex = pSex;
        this.pTime = pTime;
        this.pIllness = pIllness;
        this.mName = mName;
        this.bid = bid;
    }

    public Patient(Integer pid, String pName, String pSex, String pTime, String pIllness, String mName) {
        this.pid = pid;
        this.pName = pName;
        this.pSex = pSex;
        this.pTime = pTime;
        this.pIllness = pIllness;
        this.mName = mName;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpSex() {
        return pSex;
    }

    public void setpSex(String pSex) {
        this.pSex = pSex;
    }

    public String getpTime() {
        return pTime;
    }

    public void setpTime(String pTime) {
        this.pTime = pTime;
    }

    public String getpIllness() {
        return pIllness;
    }

    public void setpIllness(String pIllness) {
        this.pIllness = pIllness;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }
}
