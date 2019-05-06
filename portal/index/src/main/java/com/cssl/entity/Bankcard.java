package com.cssl.entity;

public class Bankcard {
    private Integer userId;

    private String userBackcard;

    @Override
    public String toString() {
        return "Bankcard{" +
                "userId=" + userId +
                ", userBackcard='" + userBackcard + '\'' +
                '}';
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserBackcard() {
        return userBackcard;
    }

    public void setUserBackcard(String userBackcard) {
        this.userBackcard = userBackcard == null ? null : userBackcard.trim();
    }
}