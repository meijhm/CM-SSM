package com.mjh.cmssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mjh.cmssm.dao.HouseMapper;
import com.mjh.cmssm.domain.House;
import com.mjh.cmssm.service.IHouseService;

@Service
public class HouseServiceImpl implements IHouseService {
	@Autowired private HouseMapper houseMapper;

	@Override
	public int deleteByPrimaryKey(Integer hid) {
		return houseMapper.deleteByPrimaryKey(hid);
	}

	@Override
	public int insert(House record) {
		return houseMapper.insert(record);
	}

	@Override
	public House selectByPrimaryKey(Integer hid) {
		return houseMapper.selectByPrimaryKey(hid);
	}

	@Override
	public List<House> selectAll() {
		return houseMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(House record) {
		return houseMapper.updateByPrimaryKey(record);
	}

	@Override
	public Boolean validateHcode(String hcode) {
		List<House> houses = houseMapper.selectAll();
		Boolean result = true;
		for (House house : houses) {
			if(house.getHcode().equals(hcode)) {
				result = false;
				break;
			}
		}
		return result;
	}
}
