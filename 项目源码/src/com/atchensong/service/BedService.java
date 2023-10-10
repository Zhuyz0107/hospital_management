package com.atchensong.service;

import com.atchensong.proj.Bed;

import java.util.List;

/**
 * @author: 赵程
 * @Date: 2023/01/07 20:06
 */
public interface BedService {
    public List<Bed> queryAll();
    public int addBed(Bed bed);
    public int UpdateBed(Bed bed);
    public Bed queryBedById(Integer bid);
    public Bed queryBedByIdInfo(Integer bid);
}
