package com.mjh.cmssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mjh.cmssm.dao.HouseMapper;
import com.mjh.cmssm.dao.UserMapper;
import com.mjh.cmssm.domain.House;
import com.mjh.cmssm.domain.User;
import com.mjh.cmssm.domain.UserExtend;
import com.mjh.cmssm.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {
	@Autowired private UserMapper userMapper;
	@Autowired private HouseMapper houseMapper;

	@Override
	public int deleteByPrimaryKey(Integer uid) {
		return userMapper.deleteByPrimaryKey(uid);
	}

	@Override
	public int insert(User record) {
		return userMapper.insert(record);
	}

	@Override
	public User selectByPrimaryKey(Integer uid) {
		return userMapper.selectByPrimaryKey(uid);
	}

	@Override
	public List<UserExtend> selectAll() {
		List<UserExtend> userExtends = new ArrayList<>();
		List<User> lists = userMapper.selectAll();
		for (User user : lists) {
			House house = houseMapper.selectByPrimaryKey(user.getHid());
			UserExtend userExtend = new UserExtend();
			userExtend.setUid(user.getUid());
			userExtend.setUcode(user.getUcode());
			userExtend.setUname(user.getUname());
			userExtend.setUpwd(user.getUpwd());
			userExtend.setUsex(user.getUsex());
			userExtend.setUphone(user.getUphone());
			userExtend.setUstarttime(user.getUstarttime());
			userExtend.setUpeoplenum(user.getUpeoplenum());
			userExtend.setUhousecode(user.getUhousecode());
			userExtend.setUtheme(user.getUtheme());
			userExtend.setHouse(house);
			userExtends.add(userExtend);
		}
		return userExtends;
	}

	@Override
	public int updateByPrimaryKey(User record) {
		return userMapper.updateByPrimaryKey(record);
	}

	@Override
	public Boolean validateHcode(String ucode) {
		List<User> houses = userMapper.selectAll();
		Boolean result = true;
		for (User house : houses) {
			if(house.getUcode().equals(ucode)) {
				result = false;
				break;
			}
		}
		return result;
	}
}
