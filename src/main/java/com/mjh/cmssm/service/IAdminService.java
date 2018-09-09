package com.mjh.cmssm.service;

import java.util.List;

import com.mjh.cmssm.domain.Admin;

public interface IAdminService {
	int deleteByPrimaryKey(Integer aid);

    int insert(Admin record);

    Admin selectByPrimaryKey(Integer aid);

    List<Admin> selectAll();

    int updateByPrimaryKey(Admin record);
    
    Admin getAdminByName(String adminname);
}
