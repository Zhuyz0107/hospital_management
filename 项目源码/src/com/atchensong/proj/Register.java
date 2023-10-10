package com.atchensong.proj;

import java.sql.Date;

/**
 * @className: Register.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/09 下午 05:07
 */
public class Register {
    private Integer rid;
    private String rname;
    private String rgender;
    private Integer rage;
    private Date rtime;
    private String problem;
    private String dName;
    private String dResponsible;

    public Register() {
    }

    public Register(String rname, String rgender, Integer rage, Date rtime, String problem, String dName, String dResponsible) {
        this.rname = rname;
        this.rgender = rgender;
        this.rage = rage;
        this.rtime = rtime;
        this.problem = problem;
        this.dName = dName;
        this.dResponsible = dResponsible;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getRgender() {
        return rgender;
    }

    public void setRgender(String rgender) {
        this.rgender = rgender;
    }

    public Integer getRage() {
        return rage;
    }

    public void setRage(Integer rage) {
        this.rage = rage;
    }

    public Date getRtime() {
        return rtime;
    }

    public void setRtime(Date rtime) {
        this.rtime = rtime;
    }

    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }

    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    public String getdResponsible() {
        return dResponsible;
    }

    public void setdResponsible(String dResponsible) {
        this.dResponsible = dResponsible;
    }
}
