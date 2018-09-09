package com.mjh.cmssm.domain;

import java.io.Serializable;

public class House implements Serializable {
    private Integer hid;

    private String hcode;

    private String hsite;

    private Integer harea;

    private Integer hheight;

    private static final long serialVersionUID = 1L;

    public Integer getHid() {
        return hid;
    }

    public void setHid(Integer hid) {
        this.hid = hid;
    }

    public String getHcode() {
        return hcode;
    }

    public void setHcode(String hcode) {
        this.hcode = hcode == null ? null : hcode.trim();
    }

    public String getHsite() {
        return hsite;
    }

    public void setHsite(String hsite) {
        this.hsite = hsite == null ? null : hsite.trim();
    }

    public Integer getHarea() {
        return harea;
    }

    public void setHarea(Integer harea) {
        this.harea = harea;
    }

    public Integer getHheight() {
        return hheight;
    }

    public void setHheight(Integer hheight) {
        this.hheight = hheight;
    }
}