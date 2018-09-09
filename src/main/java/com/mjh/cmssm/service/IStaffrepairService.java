package com.mjh.cmssm.service;

import java.util.List;

import com.mjh.cmssm.domain.Staffrepair;

public interface IStaffrepairService {
	int deleteByPrimaryKey(Integer sid);

    int insert(Staffrepair record);

    Staffrepair selectByPrimaryKey(Integer sid);

    List<Staffrepair> selectAll();

    int updateByPrimaryKey(Staffrepair record);
    
    Boolean validateHcode(String scode);
}
