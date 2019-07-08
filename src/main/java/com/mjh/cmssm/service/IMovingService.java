package com.mjh.cmssm.service;

import java.util.List;

import com.mjh.cmssm.domain.Moving;

public interface IMovingService {
	int deleteByPrimaryKey(Integer mId);

    int insert(Moving record);

    Moving selectByPrimaryKey(Integer mId);

    List<Moving> selectAll();

    int updateByPrimaryKey(Moving record);
}
