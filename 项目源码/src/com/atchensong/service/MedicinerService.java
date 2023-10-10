package com.atchensong.service;

import com.atchensong.proj.Mediciner;

import java.util.List;

public interface MedicinerService {
    //查询所有医生
    public List<Mediciner> queryAll();
    //添加医生
    public int addMediciner(Mediciner mediciner);
    //修改医生
    public int UpdateMediciner(Mediciner mediciner);
    //删除医生
    public int delMediciner(Integer mid);
    //按姓名查询医生
    public Mediciner queryMedicinerByName(String mName);
    //医生年龄分布折线图（统计图）
    public List<Mediciner> SelectAge();
    //按id实现查找修改
    public Mediciner queryMedicinerById(Integer mid);

}
