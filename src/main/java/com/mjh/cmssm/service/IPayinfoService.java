package com.mjh.cmssm.service;

import java.util.List;

import com.mjh.cmssm.domain.Payinfo;
import com.mjh.cmssm.domain.PayinfoExtend;

public interface IPayinfoService {
	int deleteByPrimaryKey(Integer pid);

    int insert(Payinfo record);

    Payinfo selectByPrimaryKey(Integer pid);

    List<PayinfoExtend> selectAll();

    int updateByPrimaryKey(Payinfo record);
}
