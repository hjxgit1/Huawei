package com.cssl.entity;

import java.util.List;

public class Gift {

    private List<Phone> phoneList;//商品

    public List<Phone> getPhoneList() {
        return phoneList;
    }

    public void setPhoneList(List<Phone> phoneList) {
        this.phoneList = phoneList;
    }

    private Integer giftId;

    private Integer phoneId;

    private Integer phoneGiftId;

    public Integer getGiftId() {
        return giftId;
    }

    public void setGiftId(Integer giftId) {
        this.giftId = giftId;
    }

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
}