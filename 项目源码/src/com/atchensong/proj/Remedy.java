package com.atchensong.proj;

public class Remedy {
    private int rId;
    private String  rName;
    private String rPrice;
    private int rNum;
    private String rRemark;

    public Remedy() {
    }

    public Remedy(int rId, String rName, String rPrice, int rNum, String rRemark) {
        this.rId = rId;
        this.rName = rName;
        this.rPrice = rPrice;
        this.rNum = rNum;
        this.rRemark = rRemark;
    }

    public int getrId() {
        return rId;
    }

    public void setrId(int rId) {
        this.rId = rId;
    }

    public String getrName() {
        return rName;
    }

    public void setrName(String rName) {
        this.rName = rName;
    }

    public String getrPrice() {
        return rPrice;
    }

    public void setrPrice(String rPrice) {
        this.rPrice = rPrice;
    }

    public int getrNum() {
        return rNum;
    }

    public void setrNum(int rNum) {
        this.rNum = rNum;
    }

    public String getrRemark() {
        return rRemark;
    }

    public void setrRemark(String rRemark) {
        this.rRemark = rRemark;
    }
}
