package com.mjh.cmssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mjh.cmssm.dao.ChargeitemMapper;
import com.mjh.cmssm.dao.PayinfoMapper;
import com.mjh.cmssm.dao.UserMapper;
import com.mjh.cmssm.domain.Chargeitem;
import com.mjh.cmssm.domain.Payinfo;
import com.mjh.cmssm.domain.PayinfoExtend;
import com.mjh.cmssm.domain.User;
import com.mjh.cmssm.service.IPayinfoService;

@Service
public class PayinfoServiceImpl implements IPayinfoService {
	@Autowired private PayinfoMapper payinfoMapper;
	@Autowired private UserMapper userMapper;
	@Autowired private ChargeitemMapper ciMapper;

	@Override
	public int deleteByPrimaryKey(Integer pid) {
		return payinfoMapper.deleteByPrimaryKey(pid);
	}

	@Override
	public int insert(Payinfo record) {
		return payinfoMapper.insert(record);
	}

	@Override
	public Payinfo selectByPrimaryKey(Integer pid) {
		return payinfoMapper.selectByPrimaryKey(pid);
	}

	@Override
	public List<PayinfoExtend> selectAll() {
		List<PayinfoExtend> payinfoExtends =  new ArrayList<>();
		List<Payinfo> lists = payinfoMapper.selectAll();
		for (Payinfo payinfo : lists) {
			User user = userMapper.selectByPrimaryKey(payinfo.getUid());
			Chargeitem chargeitem = ciMapper.selectByPrimaryKey(payinfo.getCid());
			PayinfoExtend payinfoExtend = new PayinfoExtend(payinfo.getPid(), payinfo.getPcode(), payinfo.getPtime(), payinfo.getPmoney(), payinfo.getPinfo(), payinfo.getPstatus(), chargeitem, user);
			payinfoExtends.add(payinfoExtend);
		}
		return payinfoExtends;
	}

	@Override
	public int updateByPrimaryKey(Payinfo record) {
		return payinfoMapper.updateByPrimaryKey(record);
	}

}