package com.mjh.cmssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mjh.cmssm.dao.StaffrepairMapper;
import com.mjh.cmssm.domain.Staffrepair;
import com.mjh.cmssm.service.IStaffrepairService;

@Service
public class StaffrepairServiceImpl implements IStaffrepairService {
	@Autowired private StaffrepairMapper srMapper;

	@Override
	public int deleteByPrimaryKey(Integer sid) {
		return srMapper.deleteByPrimaryKey(sid);
	}

	@Override
	public int insert(Staffrepair record) {
		return srMapper.insert(record);
	}

	@Override
	public Staffrepair selectByPrimaryKey(Integer sid) {
		return srMapper.selectByPrimaryKey(sid);
	}

	@Override
	public List<Staffrepair> selectAll() {
		return srMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Staffrepair record) {
		return srMapper.updateByPrimaryKey(record);
	}
	
	@Override
	public Boolean validateHcode(String scode) {
		List<Staffrepair> houses = srMapper.selectAll();
		Boolean result = true;
		for (Staffrepair house : houses) {
			if(house.getScode().equals(scode)) {
				result = false;
				break;
			}
		}
		return result;
	}
}
