package com.atchensong.dao.impl;

import com.atchensong.dao.MedicinerDao;
import com.atchensong.proj.Mediciner;

import java.util.List;

public class MedicinerDaoImpl extends BaseDao implements MedicinerDao {
    @Override
    public List<Mediciner> queryMediciners() {
        String sql="select * from v_mediciner_full";
        return queryForList(Mediciner.class,sql) ;
    }

    @Override
    public int addMediciner(Mediciner mediciner) {
       String sql="INSERT INTO mediciner (mId,mName, mSex,dId, mStatus,mAge,mPhone) VALUES (?,?,?, (SELECT dId FROM department WHERE dName=?),?,?,?) ";
        return update(sql,mediciner.getMid(),mediciner.getmName(),mediciner.getmSex(),mediciner.getdName(),mediciner.getmStatus(),mediciner.getmAge(),mediciner.getmPhone());
    }

    @Override
    public int UpdateMediciner(Mediciner mediciner) {
        String sql="UPDATE mediciner SET  mName=?,mSex=?,dId =(SELECT dId FROM department WHERE dName=?),mStatus =?,mAge=?,mPhone=? WHERE mId =?";
        return update(sql,mediciner.getmName(),mediciner.getmSex(),mediciner.getdName(),mediciner.getmStatus(),mediciner.getmAge(),mediciner.getmPhone(),mediciner.getMid());
    }

    @Override
    public int delMediciner(Integer mid) {
        String sql="DELETE FROM mediciner WHERE mediciner.mId=?";
        return update(sql,mid);
    }

    @Override
    public Mediciner queryMedicinerByName(String mName) {
        String sql="select * from mediciner where mName=?";
        return queryForOne(Mediciner.class,sql,mName);
    }

    @Override
    public List<Mediciner> SelectAge() {
      String sql="select * from mediciner";
        return queryForList(Mediciner.class,sql);
    }

    @Override
    public Mediciner queryMedicinerById(Integer mid) {
        String sql="select * from v_mediciner_full where mId=?";
        return queryForOne(Mediciner.class,sql,mid);
    }
}
