package com.cssl.entity;

import java.util.Date;

public class Consult {
    private Integer conId;

    private String conContent;

    private Date conCreateTime;

    private String conNickName;

    private String conReply;

    private Date conReplyTime;

    private Integer phoneId;

    public Integer getConId() {
        return conId;
    }

    public void setConId(Integer conId) {
        this.conId = conId;
    }

    public String getConContent() {
        return conContent;
    }

    public void setConContent(String conContent) {
        this.conContent = conContent == null ? null : conContent.trim();
    }

    public Date getConCreateTime() {
        return conCreateTime;
    }

    public void setConCreateTime(Date conCreateTime) {
        this.conCreateTime = conCreateTime;
    }

    public String getConNickName() {
        return conNickName;
    }

    public void setConNickName(String conNickName) {
        this.conNickName = conNickName == null ? null : conNickName.trim();
    }

    public String getConReply() {
        return conReply;
    }

    public void setConReply(String conReply) {
        this.conReply = conReply == null ? null : conReply.trim();
    }

    public Date getConReplyTime() {
        return conReplyTime;
    }

    public void setConReplyTime(Date conReplyTime) {
        this.conReplyTime = conReplyTime;
    }

    public Integer getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(Integer phoneId) {
        this.phoneId = phoneId;
    }
}