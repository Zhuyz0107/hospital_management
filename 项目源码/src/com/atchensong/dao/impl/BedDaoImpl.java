package com.atchensong.dao.impl;

import com.atchensong.dao.BedDao;
import com.atchensong.proj.Bed;

import java.util.List;

/**
 * @author: 赵程
 * @Date: 2023/01/07 20:15
 */
public class BedDaoImpl extends BaseDao implements BedDao {
    public List<Bed> queryBeds(){
        String sql="SELECT v_bedall.* FROM v_bedall";
        return queryForList(Bed.class,sql);
    }

//添加床位信息
    public int addStudent(Bed bed) {
        String sql="insert into bed(bid,bedState)values(?,?)";

        return update(sql,bed.getBid(),bed.getBedState());
    }
    //修改床位信息
    public int UpdateBed(Bed bed){
      String sql="UPDATE patient,bed set patient.bid=?,bed.bedState='有人' WHERE pid=?";
      return update(sql,bed.getBid(),bed.getPid());
    }

    @Override
    public Bed queryBedById(Integer bid) {
        String sql="SELECT bed.* FROM bed where bid=?";
        return queryForOne(Bed.class,sql,bid);
    }

    //查询床位信息;
    @Override
    public Bed queryBedByIdInfo(Integer bid) {
        String sql="SELECT v_bedall.* FROM v_bedall WHERE bid=?";
        return queryForOne(Bed.class,sql,bid);
    }

}














