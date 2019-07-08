package com.mjh.cmssm.domain;

import java.io.Serializable;

public class LoginUser implements Serializable {
    private Integer lId;

    private String lName;

    private String lPwd;

    private static final long serialVersionUID = 1L;

    public Integer getlId() {
        return lId;
    }

    public void setlId(Integer lId) {
        this.lId = lId;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName == null ? null : lName.trim();
    }

    public String getlPwd() {
        return lPwd;
    }

    public void setlPwd(String lPwd) {
        this.lPwd = lPwd == null ? null : lPwd.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", lId=").append(lId);
        sb.append(", lName=").append(lName);
        sb.append(", lPwd=").append(lPwd);
        sb.append("]");
        return sb.toString();
    }
}