package com.atchensong.service.impl;

import com.atchensong.dao.BedDao;
import com.atchensong.dao.impl.BedDaoImpl;
import com.atchensong.proj.Bed;
import com.atchensong.service.BedService;

import java.util.List;

/**
 * @author: 赵程
 * @Date: 2023/01/07 20:08
 */
public class BedServiceImpl implements BedService {
    BedDao dao=new BedDaoImpl();
    public List<Bed> queryAll(){
        return dao.queryBeds();
    }
//添加床位
    @Override
    public int addBed(Bed bed) {
        return dao.addStudent(bed);
    }
    //修改床位信息
    @Override
    public int UpdateBed(Bed bed) {
        return dao.UpdateBed(bed);
    }
    public Bed queryBedById(Integer bid){
        return dao.queryBedById(bid);
    }
    //查询床位信息
    @Override
    public Bed queryBedByIdInfo(Integer bid) {
        return dao.queryBedByIdInfo(bid);
    }

}















