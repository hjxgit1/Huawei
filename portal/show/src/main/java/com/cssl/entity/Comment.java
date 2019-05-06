package com.cssl.entity;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;
import java.util.List;

public class Comment {
    private List<User> userList;//用户集合

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    private Integer comId;

    private String comContent;

    private Date comCreateTime;

    private String comNickName;

    private String comReply;

    private Date comReplyTime;

    private Double comPlaystar;

    private Integer phoneId;

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public String getComContent() {
        return comContent;
    }

    public void setComContent(String comContent) {
        this.comContent = comContent == null ? null : comContent.trim();
    }


 /*   @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")*/
    public Date getComCreateTime() {
        return comCreateTime;
    }

    public void setComCreateTime(Date comCreateTime) {
        this.comCreateTime = comCreateTime;
    }

    public String getComNickName() {
        return comNickName;
    }

    public void setComNickName(String comNickName) {
        this.comNickName = comNickName == null ? null : comNickName.trim();
    }

    public String getComReply() {
        return comReply;
    }

    public void setComReply(String comReply) {
        this.comReply = comReply == null ? null : comReply.trim();
    }

    public Date getComReplyTime() {
        return comReplyTime;
    }

    public void setComReplyTime(Date comReplyTime) {
        this.comReplyTime = comReplyTime;
    }

    public Double getComPlaystar() {
        return comPlaystar;
    }

    public void setComPlaystar(Double comPlaystar) {
        this.comPlaystar = comPlaystar;
    }

    public Integer getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(Integer phoneId) {
        this.phoneId = phoneId;
    }
}