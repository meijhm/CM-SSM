package com.mjh.cmssm.domain;

import java.io.Serializable;
import java.util.Date;

public class PayinfoExtend implements Serializable {
	private Integer pid;

    private String pcode;

    private Date ptime;
    
    private Integer pmoney;

    private String pinfo;

    private String pstatus;

    private Chargeitem chargeitem;

    private User user;

    private static final long serialVersionUID = 1L;

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public Date getPtime() {
		return ptime;
	}

	public void setPtime(Date ptime) {
		this.ptime = ptime;
	}

	public String getPinfo() {
		return pinfo;
	}

	public void setPinfo(String pinfo) {
		this.pinfo = pinfo;
	}

	public String getPstatus() {
		return pstatus;
	}

	public void setPstatus(String pstatus) {
		this.pstatus = pstatus;
	}

	public Chargeitem getChargeitem() {
		return chargeitem;
	}

	public void setChargeitem(Chargeitem chargeitem) {
		this.chargeitem = chargeitem;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getPmoney() {
		return pmoney;
	}

	public void setPmoney(Integer pmoney) {
		this.pmoney = pmoney;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public PayinfoExtend(Integer pid, String pcode, Date ptime, Integer pmoney, String pinfo, String pstatus,
			Chargeitem chargeitem, User user) {
		super();
		this.pid = pid;
		this.pcode = pcode;
		this.ptime = ptime;
		this.pmoney = pmoney;
		this.pinfo = pinfo;
		this.pstatus = pstatus;
		this.chargeitem = chargeitem;
		this.user = user;
	}

	public PayinfoExtend() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
