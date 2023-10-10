package com.atchensong.service.impl;

import com.atchensong.dao.InstrumentDao;
import com.atchensong.dao.RemedyDao;
import com.atchensong.dao.impl.InstrumentDaoImpl;
import com.atchensong.dao.impl.RemedyDaoImpl;
import com.atchensong.proj.Instrument;
import com.atchensong.service.InstrumentService;

import java.util.List;

public class InstrumentServiceImpl implements InstrumentService {
   InstrumentDao dao=new InstrumentDaoImpl();
    @Override
    public List<Instrument> queryAll() {
        return dao.queryInstrument();
    }

    @Override
    public int addInstrument(Instrument instrument) {
        return dao.addInstrument(instrument);
    }

    @Override
    public int delInstrumentById(Integer iId) {
        return dao.delInstrumentById(iId);
    }

    @Override
    public int UpdateInstrument(Instrument instrument) {
        return dao.UpdateInstrument(instrument);
    }

    @Override
    public Instrument queryInstrumentById(Integer iId) {
        return dao.queryInstrumentById(iId);
    }

    @Override
    public List<Instrument> InstrumentsNum() {
        return dao.InstrumentsNum();
    }

    @Override
    public Instrument queryInstrumentByName(String iName) {
        return dao.queryInstrumentByName(iName);
    }
}
