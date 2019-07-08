package com.mjh.cmssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mjh.cmssm.dao.MovingMapper;
import com.mjh.cmssm.domain.Moving;
import com.mjh.cmssm.service.IMovingService;

@Service
public class MovingServiceImpl implements IMovingService {
	@Autowired private MovingMapper movingMapper;

	@Override
	public int deleteByPrimaryKey(Integer mId) {
		return movingMapper.deleteByPrimaryKey(mId);
	}

	@Override
	public int insert(Moving record) {
		return movingMapper.insert(record);
	}

	@Override
	public Moving selectByPrimaryKey(Integer mId) {
		// TODO Auto-generated method stub
		return movingMapper.selectByPrimaryKey(mId);
	}

	@Override
	public List<Moving> selectAll() {
		return movingMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Moving record) {
		// TODO Auto-generated method stub
		return movingMapper.updateByPrimaryKey(record);
	}

}
