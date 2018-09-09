package com.mjh.cmssm.service;

import java.util.List;

import com.mjh.cmssm.domain.User;
import com.mjh.cmssm.domain.UserExtend;

public interface IUserService {
	int deleteByPrimaryKey(Integer uid);

    int insert(User record);

    User selectByPrimaryKey(Integer uid);

    List<UserExtend> selectAll();

    int updateByPrimaryKey(User record);
    
    Boolean validateHcode(String ucode);
}
