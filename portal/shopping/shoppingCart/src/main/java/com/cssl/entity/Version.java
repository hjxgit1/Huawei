package com.cssl.entity;

public class Version {
    private Integer phoneVersionid;

    private String phoneVersionname;

    public Integer getPhoneVersionid() {
        return phoneVersionid;
    }

    public void setPhoneVersionid(Integer phoneVersionid) {
        this.phoneVersionid = phoneVersionid;
    }

    public String getPhoneVersionname() {
        return phoneVersionname;
    }

    public void setPhoneVersionname(String phoneVersionname) {
        this.phoneVersionname = phoneVersionname == null ? null : phoneVersionname.trim();
    }
}