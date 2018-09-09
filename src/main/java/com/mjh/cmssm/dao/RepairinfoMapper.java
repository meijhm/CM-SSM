package com.mjh.cmssm.dao;

import com.mjh.cmssm.domain.Repairinfo;
import java.util.List;

public interface RepairinfoMapper {
    int deleteByPrimaryKey(Integer rid);

    int insert(Repairinfo record);

    Repairinfo selectByPrimaryKey(Integer rid);

    List<Repairinfo> selectAll();

    int updateByPrimaryKey(Repairinfo record);
}