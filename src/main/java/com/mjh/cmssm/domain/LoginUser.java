package com.mjh.cmssm.domain;

import java.io.Serializable;

public class LoginUser implements Serializable {
    private Integer lid;

    private String lname;

    private String lpwd;

    private String lheadimg;

    private String utheme;

    private static final long serialVersionUID = 1L;

    public Integer getLid() {
        return lid;
    }

    public void setLid(Integer lid) {
        this.lid = lid;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname == null ? null : lname.trim();
    }

    public String getLpwd() {
        return lpwd;
    }

    public void setLpwd(String lpwd) {
        this.lpwd = lpwd == null ? null : lpwd.trim();
    }

    public String getLheadimg() {
        return lheadimg;
    }

    public void setLheadimg(String lheadimg) {
        this.lheadimg = lheadimg == null ? null : lheadimg.trim();
    }

    public String getUtheme() {
        return utheme;
    }

    public void setUtheme(String utheme) {
        this.utheme = utheme == null ? null : utheme.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", lid=").append(lid);
        sb.append(", lname=").append(lname);
        sb.append(", lpwd=").append(lpwd);
        sb.append(", lheadimg=").append(lheadimg);
        sb.append(", utheme=").append(utheme);
        sb.append("]");
        return sb.toString();
    }
}