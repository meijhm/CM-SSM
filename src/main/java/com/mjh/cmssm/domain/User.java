package com.mjh.cmssm.domain;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    private Integer uid;

    private String ucode;

    private String uname;

    private String upwd;

    private String usex;

    private String uphone;

    private Date ustarttime;

    private Integer upeoplenum;

    private String uhousecode;

    private String utheme;
    
    private Integer hid;

    private static final long serialVersionUID = 1L;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUcode() {
        return ucode;
    }

    public void setUcode(String ucode) {
        this.ucode = ucode == null ? null : ucode.trim();
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd == null ? null : upwd.trim();
    }

    public String getUsex() {
        return usex;
    }

    public void setUsex(String usex) {
        this.usex = usex == null ? null : usex.trim();
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone == null ? null : uphone.trim();
    }

    public Date getUstarttime() {
        return ustarttime;
    }

    public void setUstarttime(Date ustarttime) {
        this.ustarttime = ustarttime;
    }

    public Integer getUpeoplenum() {
        return upeoplenum;
    }

    public void setUpeoplenum(Integer upeoplenum) {
        this.upeoplenum = upeoplenum;
    }

    public String getUhousecode() {
        return uhousecode;
    }

    public void setUhousecode(String uhousecode) {
        this.uhousecode = uhousecode == null ? null : uhousecode.trim();
    }

    public String getUtheme() {
        return utheme;
    }

    public void setUtheme(String utheme) {
        this.utheme = utheme == null ? null : utheme.trim();
    }

    public Integer getHid() {
        return hid;
    }

    public void setHid(Integer hid) {
        this.hid = hid;
    }
}