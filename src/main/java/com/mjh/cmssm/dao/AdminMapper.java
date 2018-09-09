package com.mjh.cmssm.dao;

import com.mjh.cmssm.domain.Admin;
import java.util.List;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer aid);

    int insert(Admin record);

    Admin selectByPrimaryKey(Integer aid);

    List<Admin> selectAll();

    int updateByPrimaryKey(Admin record);
    
    Admin getAdminByName(String adminname);
}