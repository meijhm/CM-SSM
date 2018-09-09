package com.mjh.cmssm.dao;

import com.mjh.cmssm.domain.Dorepair;
import java.util.List;

public interface DorepairMapper {
    int deleteByPrimaryKey(Integer did);

    int insert(Dorepair record);

    Dorepair selectByPrimaryKey(Integer did);

    List<Dorepair> selectAll();

    int updateByPrimaryKey(Dorepair record);
}