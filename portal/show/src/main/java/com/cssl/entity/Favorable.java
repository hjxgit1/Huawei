package com.cssl.entity;

public class Favorable {
    private Integer phoneId;

    private String phoneFavorablecontent;

    public Integer getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(Integer phoneId) {
        this.phoneId = phoneId;
    }

    public String getPhoneFavorablecontent() {
        return phoneFavorablecontent;
    }

    public void setPhoneFavorablecontent(String phoneFavorablecontent) {
        this.phoneFavorablecontent = phoneFavorablecontent == null ? null : phoneFavorablecontent.trim();
    }
}