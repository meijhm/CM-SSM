package com.mjh.cmssm.domain;

import java.io.Serializable;
import java.util.Date;

public class Moving implements Serializable {
    private Integer mId;

    private Date mTime;

    private String mMsg;

    private String lName;

    private static final long serialVersionUID = 1L;

    public Integer getmId() {
        return mId;
    }

    public void setmId(Integer mId) {
        this.mId = mId;
    }

    public Date getmTime() {
        return mTime;
    }

    public void setmTime(Date mTime) {
        this.mTime = mTime;
    }

    public String getmMsg() {
        return mMsg;
    }

    public void setmMsg(String mMsg) {
        this.mMsg = mMsg == null ? null : mMsg.trim();
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName == null ? null : lName.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", mId=").append(mId);
        sb.append(", mTime=").append(mTime);
        sb.append(", mMsg=").append(mMsg);
        sb.append(", lName=").append(lName);
        sb.append("]");
        return sb.toString();
    }
}