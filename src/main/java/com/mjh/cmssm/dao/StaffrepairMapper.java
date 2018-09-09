package com.mjh.cmssm.dao;

import com.mjh.cmssm.domain.Staffrepair;
import java.util.List;

public interface StaffrepairMapper {
    int deleteByPrimaryKey(Integer sid);

    int insert(Staffrepair record);

    Staffrepair selectByPrimaryKey(Integer sid);

    List<Staffrepair> selectAll();

    int updateByPrimaryKey(Staffrepair record);
}