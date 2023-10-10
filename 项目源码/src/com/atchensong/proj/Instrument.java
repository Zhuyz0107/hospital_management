package com.atchensong.proj;

public class Instrument {
    private int iId;
    private String  iName;
    private String iPrice;
    private int iNum;

    public int getiId() {
        return iId;
    }

    public void setiId(int iId) {
        this.iId = iId;
    }

    public String getiName() {
        return iName;
    }

    public void setiName(String iName) {
        this.iName = iName;
    }

    public String getiPrice() {
        return iPrice;
    }

    public void setiPrice(String iPrice) {
        this.iPrice = iPrice;
    }

    public int getiNum() {
        return iNum;
    }

    public void setiNum(int iNum) {
        this.iNum = iNum;
    }

    public String getiRemark() {
        return iRemark;
    }

    public void setiRemark(String iRemark) {
        this.iRemark = iRemark;
    }

    public String getiState() {
        return iState;
    }

    public void setiState(String iState) {
        this.iState = iState;
    }

    private String iRemark;
    private String iState;
    public Instrument(int iId, String iName, String iPrice, int iNum, String iRemark, String iState) {
        this.iId = iId;
        this.iName = iName;
        this.iPrice = iPrice;
        this.iNum = iNum;
        this.iRemark = iRemark;
        this.iState = iState;
    }


    public Instrument() {
    }


}
