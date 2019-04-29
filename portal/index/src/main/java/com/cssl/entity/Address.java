package com.cssl.entity;

public class Address {
    private Integer userId;

    private String userAddress;

    @Override
    public String toString() {
        return "Address{" +
                "userId=" + userId +
                ", userAddress='" + userAddress + '\'' +
                '}';
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress == null ? null : userAddress.trim();
    }


}