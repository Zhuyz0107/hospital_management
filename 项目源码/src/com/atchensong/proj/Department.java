package com.atchensong.proj;

/**
 * @className: Department.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/08 上午 10:50
 */
public class Department {
    private String dName;
    private String dRespinible;

    public Department() {
    }

    public Department(String dName, String dRespinible) {
        this.dName = dName;
        this.dRespinible = dRespinible;
    }

    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    public String getdRespinible() {
        return dRespinible;
    }

    public void setdRespinible(String dRespinible) {
        this.dRespinible = dRespinible;
    }
}
