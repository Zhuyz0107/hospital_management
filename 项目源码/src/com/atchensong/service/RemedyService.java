package com.atchensong.service;

import com.atchensong.proj.Remedy;

import java.util.List;

public interface RemedyService {
    public List<Remedy> queryAll();
    public int addRemedy(Remedy remedy);
    public  int  delRemedyById(Integer rId);
    public int UpdateRemedy(Remedy remedy);

    public Remedy queryRemedyById(Integer rId);
    public Remedy  queryRemedyByName(String rName);
    public List<Remedy> RemedyNum();
}
