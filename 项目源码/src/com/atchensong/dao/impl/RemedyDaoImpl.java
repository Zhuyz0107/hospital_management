package com.atchensong.dao.impl;

import com.atchensong.dao.RemedyDao;
import com.atchensong.proj.Remedy;

import java.util.List;

public class RemedyDaoImpl extends  BaseDao implements RemedyDao {

    @Override
    public List<Remedy> queryRemedys() {
        String sql="select * from remedy";
        return queryForList(Remedy.class,sql);
    }

    @Override
    public int addRemedy(Remedy remedy) {
        String  sql="insert into remedy (rId,rName,rPrice,rNum,rRemark)values(?,?,?,?,?)";
        return update(sql,remedy.getrId(),remedy.getrName(),remedy.getrPrice(),remedy.getrNum(),remedy.getrRemark());
    }

    @Override
    public int delRemedyById(Integer rId) {
        String sql="delete from remedy where rId=?";
        return update(sql,rId);
    }

    @Override
    public int UpdateRemedy(Remedy remedy) {
        String sql="UPDATE remedy set rName=?,rPrice=?,rNum=?,rRemark=? where rId=?";
        return update(sql,remedy.getrName(),remedy.getrPrice(),remedy.getrNum(),remedy.getrRemark(),remedy.getrId());
    }

    @Override
    public Remedy queryRemedyById(Integer rId) {
        String sql="select * from remedy where rId=?";
        return queryForOne(Remedy.class,sql, rId);
    }

    @Override
    public Remedy queryRemedyByName(String rName) {
        String sql="select * from remedy where rName=?";
        return queryForOne(Remedy.class,sql, rName);
    }

    @Override
    public List<Remedy> RemedyNum() {
        String sql ="select * from remedy";
        return queryForList(Remedy.class,sql) ;
    }
}
