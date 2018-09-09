package com.mjh.cmssm.domain;

import java.io.Serializable;
import java.util.Date;

public class RepairinfoExtend implements Serializable {
	private Integer rid;

    private String rcode;

    private Date rtime;

    private String rdetail;

    private String rstatus;

    private User user;

    private static final long serialVersionUID = 1L;

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public String getRcode() {
		return rcode;
	}

	public void setRcode(String rcode) {
		this.rcode = rcode;
	}

	public Date getRtime() {
		return rtime;
	}

	public void setRtime(Date rtime) {
		this.rtime = rtime;
	}

	public String getRdetail() {
		return rdetail;
	}

	public void setRdetail(String rdetail) {
		this.rdetail = rdetail;
	}

	public String getRstatus() {
		return rstatus;
	}

	public void setRstatus(String rstatus) {
		this.rstatus = rstatus;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public RepairinfoExtend() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RepairinfoExtend(Integer rid, String rcode, Date rtime, String rdetail, String rstatus, User user) {
		super();
		this.rid = rid;
		this.rcode = rcode;
		this.rtime = rtime;
		this.rdetail = rdetail;
		this.rstatus = rstatus;
		this.user = user;
	}

}
