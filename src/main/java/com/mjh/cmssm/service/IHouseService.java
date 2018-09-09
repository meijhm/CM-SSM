package com.mjh.cmssm.service;

import java.util.List;

import com.mjh.cmssm.domain.House;

public interface IHouseService {
	int deleteByPrimaryKey(Integer hid);

    int insert(House record);

    House selectByPrimaryKey(Integer hid);

    List<House> selectAll();

    int updateByPrimaryKey(House record);
    
    Boolean validateHcode(String hcode);
}
