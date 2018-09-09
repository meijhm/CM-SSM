package com.mjh.cmssm.dao;

import com.mjh.cmssm.domain.Chargeitem;
import java.util.List;

public interface ChargeitemMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(Chargeitem record);

    Chargeitem selectByPrimaryKey(Integer cid);

    List<Chargeitem> selectAll();

    int updateByPrimaryKey(Chargeitem record);
}