package com.mjh.cmssm.service;

import java.util.List;

import com.mjh.cmssm.domain.Dorepair;
import com.mjh.cmssm.domain.DorepairExtend;

public interface IDorepairService {
	int deleteByPrimaryKey(Integer did);

    int insert(Dorepair record);

    Dorepair selectByPrimaryKey(Integer did);

    List<DorepairExtend> selectAll();

    int updateByPrimaryKey(Dorepair record);

}
