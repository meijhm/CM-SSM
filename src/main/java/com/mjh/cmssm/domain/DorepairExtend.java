package com.mjh.cmssm.domain;

import java.io.Serializable;
import java.util.Date;

public class DorepairExtend implements Serializable {
	private Integer did;

    private Date dtime;

    private Integer dmoney;

    private Staffrepair staff;

    private Repairinfo repairinfo;

    private static final long serialVersionUID = 1L;

	public Integer getDid() {
		return did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public Date getDtime() {
		return dtime;
	}

	public void setDtime(Date dtime) {
		this.dtime = dtime;
	}

	public Integer getDmoney() {
		return dmoney;
	}

	public void setDmoney(Integer dmoney) {
		this.dmoney = dmoney;
	}

	public Staffrepair getStaff() {
		return staff;
	}

	public void setStaff(Staffrepair staff) {
		this.staff = staff;
	}

	public Repairinfo getRepairinfo() {
		return repairinfo;
	}

	public void setRepairinfo(Repairinfo repairinfo) {
		this.repairinfo = repairinfo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public DorepairExtend() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DorepairExtend(Integer did, Date dtime, Integer dmoney, Staffrepair staff, Repairinfo repairinfo) {
		super();
		this.did = did;
		this.dtime = dtime;
		this.dmoney = dmoney;
		this.staff = staff;
		this.repairinfo = repairinfo;
	}
    
}
