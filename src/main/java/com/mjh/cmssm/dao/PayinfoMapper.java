package com.mjh.cmssm.dao;

import com.mjh.cmssm.domain.Payinfo;
import java.util.List;

public interface PayinfoMapper {
    int deleteByPrimaryKey(Integer pid);

    int insert(Payinfo record);

    Payinfo selectByPrimaryKey(Integer pid);

    List<Payinfo> selectAll();

    int updateByPrimaryKey(Payinfo record);
}