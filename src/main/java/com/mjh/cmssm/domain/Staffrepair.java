package com.mjh.cmssm.domain;

import java.io.Serializable;

public class Staffrepair implements Serializable {
    private Integer sid;

    private String scode;

    private String sname;

    private String spwd;

    private String ssex;

    private String sphone;

    private Double sevaluate;

    private String stheme;

    private static final long serialVersionUID = 1L;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getScode() {
        return scode;
    }

    public void setScode(String scode) {
        this.scode = scode == null ? null : scode.trim();
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getSpwd() {
        return spwd;
    }

    public void setSpwd(String spwd) {
        this.spwd = spwd == null ? null : spwd.trim();
    }

    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex == null ? null : ssex.trim();
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone == null ? null : sphone.trim();
    }

    public Double getSevaluate() {
        return sevaluate;
    }

    public void setSevaluate(Double sevaluate) {
        this.sevaluate = sevaluate;
    }

    public String getStheme() {
        return stheme;
    }

    public void setStheme(String stheme) {
        this.stheme = stheme == null ? null : stheme.trim();
    }
}