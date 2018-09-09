package com.mjh.cmssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mjh.cmssm.dao.DorepairMapper;
import com.mjh.cmssm.dao.RepairinfoMapper;
import com.mjh.cmssm.dao.StaffrepairMapper;
import com.mjh.cmssm.domain.Dorepair;
import com.mjh.cmssm.domain.DorepairExtend;
import com.mjh.cmssm.domain.Repairinfo;
import com.mjh.cmssm.domain.Staffrepair;
import com.mjh.cmssm.service.IDorepairService;

@Service
public class DorepairServiceImpl implements IDorepairService {
	@Autowired private DorepairMapper drMapper;
	@Autowired private StaffrepairMapper srMapper;
	@Autowired private RepairinfoMapper riMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer did) {
		return drMapper.deleteByPrimaryKey(did);
	}

	@Override
	public int insert(Dorepair record) {
		return drMapper.insert(record);
	}

	@Override
	public Dorepair selectByPrimaryKey(Integer did) {
		return drMapper.selectByPrimaryKey(did);
	}

	@Override
	public List<DorepairExtend> selectAll() {
		List<DorepairExtend> dorepairExtends = new ArrayList<>();
		List<Dorepair> dorepairs = drMapper.selectAll();
		for (Dorepair dorepair : dorepairs) {
			Staffrepair staff = srMapper.selectByPrimaryKey(dorepair.getSid());
			Repairinfo repairinfo = riMapper.selectByPrimaryKey(dorepair.getRid());
			DorepairExtend dorepairExtend = new DorepairExtend(dorepair.getDid(), dorepair.getDtime(), dorepair.getDmoney(), staff, repairinfo);
			dorepairExtends.add(dorepairExtend);
		}
		return dorepairExtends;
	}

	@Override
	public int updateByPrimaryKey(Dorepair record) {
		return drMapper.updateByPrimaryKey(record);
	}

}
