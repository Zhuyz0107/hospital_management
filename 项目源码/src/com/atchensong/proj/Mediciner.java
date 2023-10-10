package com.atchensong.proj;

public class Mediciner {
    public Mediciner(Integer mid, String mName, String mSex,Integer did, String mStatus, String mAge, String mPhone) {
        this.mid = mid;
        this.mName = mName;
        this.mSex = mSex;
        this.did = did;
        this.mStatus = mStatus;
        this.mAge = mAge;
        this.mPhone = mPhone;
    }

    public Mediciner(Integer mid, String mName, String mSex, String mStatus, String mAge, String mPhone, String dName) {
        this.mid = mid;
        this.mName = mName;
        this.mSex = mSex;
        this.mStatus = mStatus;
        this.mAge = mAge;
        this.mPhone = mPhone;
        this.dName = dName;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }
    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public String getmSex() {
        return mSex;
    }

    public void setmSex(String mSex) {
        this.mSex = mSex;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getmStatus() {
        return mStatus;
    }

    public void setmStatus(String mStatus) {
        this.mStatus = mStatus;
    }

    public String getmAge() {
        return mAge;
    }

    public void setmAge(String mAge) {
        this.mAge = mAge;
    }

    public String getmPhone() {
        return mPhone;
    }

    public void setmPhone(String mPhone) {
        this.mPhone = mPhone;
    }

    public Mediciner() {
    }

    private Integer mid;
    private String mName;
    private String mSex;
    private Integer did;
    private String mStatus;
    private  String mAge;



    private String mPhone;
    private String dName;





}
