package com.atchensong.service;

import com.atchensong.proj.Instrument;
import com.atchensong.proj.Remedy;

import java.util.List;

public interface InstrumentService {
    //������ҵ���߼��ӿ�
    public List<Instrument> queryAll();
    public int addInstrument(Instrument instrument);

    public  int delInstrumentById(Integer iId);
    public int UpdateInstrument(Instrument instrument);
    public Instrument queryInstrumentById(Integer iId);
    public List<Instrument> InstrumentsNum();
    public Instrument  queryInstrumentByName(String iName);
}
