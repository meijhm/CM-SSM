package com.mjh.cmssm.service;

import java.util.List;

import com.mjh.cmssm.domain.Repairinfo;
import com.mjh.cmssm.domain.RepairinfoExtend;

public interface IRepairinfoService {
	int deleteByPrimaryKey(Integer rid);

    int insert(Repairinfo record);

    Repairinfo selectByPrimaryKey(Integer rid);

    List<RepairinfoExtend> selectAll();

    int updateByPrimaryKey(Repairinfo record);
}
