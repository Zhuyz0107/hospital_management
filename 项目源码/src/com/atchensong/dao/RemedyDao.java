package com.atchensong.dao;

import com.atchensong.proj.Instrument;
import com.atchensong.proj.Remedy;

import java.util.List;

public interface RemedyDao {

    List<Remedy> queryRemedys();

    int addRemedy(Remedy remedy);

    int  delRemedyById(Integer rId);

    int UpdateRemedy(Remedy remedy);

    Remedy queryRemedyById(Integer rId);

    Remedy  queryRemedyByName(String rName);

    List<Remedy> RemedyNum();
}
