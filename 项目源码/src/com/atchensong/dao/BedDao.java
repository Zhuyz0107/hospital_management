package com.atchensong.dao;

import com.atchensong.proj.Bed;

import java.util.List;

/**
 * @author: 赵程
 * @Date: 2023/01/07 20:09
 */
public interface BedDao {
    public List<Bed> queryBeds();
    //添加床位
    public int addStudent(Bed bed);
    //修改床位信息
    public int UpdateBed(Bed bed);
    //根据床位id查询
    public Bed queryBedById(Integer bid);
    //2.0根据床位信息查询
    public Bed queryBedByIdInfo(Integer bid);
}





















