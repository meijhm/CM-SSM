package com.mjh.cmssm.dao;

import com.mjh.cmssm.domain.House;
import java.util.List;

public interface HouseMapper {
    int deleteByPrimaryKey(Integer hid);

    int insert(House record);

    House selectByPrimaryKey(Integer hid);

    List<House> selectAll();

    int updateByPrimaryKey(House record);
}