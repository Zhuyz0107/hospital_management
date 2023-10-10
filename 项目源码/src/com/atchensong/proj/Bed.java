package com.atchensong.proj;

import java.util.Date;

/**
 * @author: 赵程
 * @Date: 2023/01/07 20:01
 */
public class Bed {
    private Integer bid;
    private String bedState;
    private String pName;
    private String pSex;
    private String pTime;
    private String pIllness;
    private String mName;
    private String dName;
    private Integer pid;



    public Bed(Integer bid, String bedState) {
        this.bid=bid;
        this.bedState=bedState;
    }

    public Bed(){}
    public Bed(Integer bid,String bedState,String pName,String pSex,String pTime,String pIllness,String mName,String dName){
        this.bedState=bedState;
        this.bid=bid;
        this.dName=dName;
        this.mName=mName;
        this.pIllness=pIllness;
        this.pName=pName;
        this.pSex=pSex;
        this.pTime=pTime;
    }

    public Bed(Integer bid, Integer pid) {
        this.bid=bid;
        this.pid=pid;
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public String getBedState() {
        return bedState;
    }

    public void setBedState(String bedState) {
        this.bedState = bedState;
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
    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }
}
