package com.mjh.cmssm.service;

import java.util.List;

import com.mjh.cmssm.domain.Chargeitem;

public interface IChargeitemService {
	int deleteByPrimaryKey(Integer cid);

    int insert(Chargeitem record);

    Chargeitem selectByPrimaryKey(Integer cid);

    List<Chargeitem> selectAll();

    int updateByPrimaryKey(Chargeitem record);
    
    Boolean validateHcode(String ccode);
}
