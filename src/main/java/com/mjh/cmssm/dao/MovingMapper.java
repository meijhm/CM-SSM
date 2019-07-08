package com.mjh.cmssm.dao;

import com.mjh.cmssm.domain.Moving;
import java.util.List;

public interface MovingMapper {
    int deleteByPrimaryKey(Integer mId);

    int insert(Moving record);

    Moving selectByPrimaryKey(Integer mId);

    List<Moving> selectAll();

    int updateByPrimaryKey(Moving record);
}