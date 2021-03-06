package com.cssl.entity;

public class Color {
    private Integer phoneColorid;

    private String phoneColorname;

    @Override
    public String toString() {
        return "Color{" +
                "phoneColorid=" + phoneColorid +
                ", phoneColorname='" + phoneColorname + '\'' +
                '}';
    }

    public Integer getPhoneColorid() {
        return phoneColorid;
    }

    public void setPhoneColorid(Integer phoneColorid) {
        this.phoneColorid = phoneColorid;
    }

    public String getPhoneColorname() {
        return phoneColorname;
    }

    public void setPhoneColorname(String phoneColorname) {
        this.phoneColorname = phoneColorname == null ? null : phoneColorname.trim();
    }
}