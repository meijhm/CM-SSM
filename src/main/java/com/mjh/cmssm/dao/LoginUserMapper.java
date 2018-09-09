package com.mjh.cmssm.dao;


import java.util.List;

import com.mjh.cmssm.domain.LoginUser;

public interface LoginUserMapper {
    int deleteByPrimaryKey(Integer lid);

    int insert(LoginUser record);

    LoginUser selectByPrimaryKey(Integer lid);

    List<LoginUser> selectAll();

    int updateByPrimaryKey(LoginUser record);
    
    int selectByUserName(String username);
    
    LoginUser selectgetUserByName(String username);
}