package com.atchensong.dao.impl;

import com.atchensong.dao.InstrumentDao;
import com.atchensong.proj.Instrument;
import com.atchensong.proj.Remedy;


import java.util.List;

public class InstrumentDaoImpl extends BaseDao implements InstrumentDao {

    @Override
    public List<Instrument> queryInstrument() {
        String sql="select * from instrument";
        return queryForList(Instrument.class,sql);
    }

    @Override
    public int addInstrument(Instrument instrument) {
        String  sql="insert into instrument (iId,iName,iPrice,iNum,iRemark,iState)values(?,?,?,?,?,?)";
        return update(sql,instrument.getiId(),instrument.getiName(),instrument.getiPrice(),instrument.getiNum(),instrument.getiRemark(),instrument.getiState());
    }

    @Override
    public int delInstrumentById(Integer iId) {
        String sql="delete from instrument where iId=?";
        return update(sql,iId);
    }

    @Override
    public int UpdateInstrument(Instrument instrument) {
        String sql="UPDATE instrument set iName=?,iPrice=?,iNum=?,iRemark=?,iState=? where iId=?";
        return update(sql,instrument.getiName(),instrument.getiPrice(),instrument.getiNum(),instrument.getiRemark(),instrument.getiState(),instrument.getiId());
    }

    @Override
    public Instrument queryInstrumentByName(String iName) {
        String sql="select * from instrument where iName=?";
        return queryForOne(Instrument.class,sql, iName);
    }

    @Override
    public Instrument queryInstrumentById(Integer iId) {
        String sql="select * from instrument where iId=?";
        return queryForOne(Instrument.class,sql, iId);
    }

    @Override
    public List<Instrument> InstrumentsNum() {
        String sql ="select * from instrument";
        return queryForList(Instrument.class,sql) ;
    }
}
