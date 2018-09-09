package com.mjh.cmssm.domain;

import java.io.Serializable;
import java.util.Date;

public class Repairinfo implements Serializable {
    private Integer rid;

    private String rcode;

    private Date rtime;

    private String rdetail;

    private String rstatus;

    private Integer uid;

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
        this.rcode = rcode == null ? null : rcode.trim();
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
        this.rdetail = rdetail == null ? null : rdetail.trim();
    }

    public String getRstatus() {
        return rstatus;
    }

    public void setRstatus(String rstatus) {
        this.rstatus = rstatus == null ? null : rstatus.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}