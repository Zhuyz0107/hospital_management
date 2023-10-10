package com.atchensong.dao;

import com.atchensong.proj.Instrument;
import com.atchensong.proj.Remedy;

import java.util.List;

public interface InstrumentDao {

    List<Instrument> queryInstrument();

    int addInstrument(Instrument instrument);

    int  delInstrumentById(Integer iId);

    int UpdateInstrument(Instrument instrument);

    Instrument  queryInstrumentByName(String iName);

    Instrument queryInstrumentById(Integer iId);

    List<Instrument> InstrumentsNum();
}
