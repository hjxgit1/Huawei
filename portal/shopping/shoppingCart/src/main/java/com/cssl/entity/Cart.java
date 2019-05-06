package com.cssl.entity;

import java.io.Serializable;
import java.util.List;

public class Cart implements Serializable {
    private Integer phoneId;

    private Integer phoneGiftId;

    private Phone phone;

    private String phone_colorname;

    private  String phone_versionname;

    private Integer number;

    private Double totalPrice;

    public Integer getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(Integer phoneId) {
        this.phoneId = phoneId;
    }

    public Integer getPhoneGiftId() {
        return phoneGiftId;
    }

    public void setPhoneGiftId(Integer phoneGiftId) {
        this.phoneGiftId = phoneGiftId;
    }

    public Phone getPhone() {
        return phone;
    }

    public void setPhone(Phone phone) {
        this.phone = phone;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getPhone_colorname() {
        return phone_colorname;
    }

    public void setPhone_colorname(String phone_colorname) {
        this.phone_colorname = phone_colorname;
    }

    public String getPhone_versionname() {
        return phone_versionname;
    }

    public void setPhone_versionname(String phone_versionname) {
        this.phone_versionname = phone_versionname;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "phoneId=" + phoneId +
                ", phoneGiftId=" + phoneGiftId +
                ", phone=" + phone +
                ", phone_colorname='" + phone_colorname + '\'' +
                ", phone_versionname='" + phone_versionname + '\'' +
                ", number=" + number +
                ", totalPrice=" + totalPrice +
                '}';
    }
}
