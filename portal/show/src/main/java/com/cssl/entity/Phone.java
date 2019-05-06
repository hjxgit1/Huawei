package com.cssl.entity;

import java.util.Date;

public class Phone {
    private Integer phoneId;

    private String phoneName;

    private Integer phoneCateid;

    private Integer phoneChildCateid;

    private String phoneDesc;

    private String phoneVideoPath;

    private Double phoneOriginalprice;

    private Integer phoneStock;

    private Date phoneCreatedate;

    private String phoneIsputaway;

    public Integer getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(Integer phoneId) {
        this.phoneId = phoneId;
    }

    public String getPhoneName() {
        return phoneName;
    }

    public void setPhoneName(String phoneName) {
        this.phoneName = phoneName == null ? null : phoneName.trim();
    }

    public Integer getPhoneCateid() {
        return phoneCateid;
    }

    public void setPhoneCateid(Integer phoneCateid) {
        this.phoneCateid = phoneCateid;
    }

    public Integer getPhoneChildCateid() {
        return phoneChildCateid;
    }

    public void setPhoneChildCateid(Integer phoneChildCateid) {
        this.phoneChildCateid = phoneChildCateid;
    }

    public String getPhoneDesc() {
        return phoneDesc;
    }

    public void setPhoneDesc(String phoneDesc) {
        this.phoneDesc = phoneDesc == null ? null : phoneDesc.trim();
    }

    public String getPhoneVideoPath() {
        return phoneVideoPath;
    }

    public void setPhoneVideoPath(String phoneVideoPath) {
        this.phoneVideoPath = phoneVideoPath == null ? null : phoneVideoPath.trim();
    }

    public Double getPhoneOriginalprice() {
        return phoneOriginalprice;
    }

    public void setPhoneOriginalprice(Double phoneOriginalprice) {
        this.phoneOriginalprice = phoneOriginalprice;
    }

    public Integer getPhoneStock() {
        return phoneStock;
    }

    public void setPhoneStock(Integer phoneStock) {
        this.phoneStock = phoneStock;
    }

    public Date getPhoneCreatedate() {
        return phoneCreatedate;
    }

    public void setPhoneCreatedate(Date phoneCreatedate) {
        this.phoneCreatedate = phoneCreatedate;
    }

    public String getPhoneIsputaway() {
        return phoneIsputaway;
    }

    public void setPhoneIsputaway(String phoneIsputaway) {
        this.phoneIsputaway = phoneIsputaway == null ? null : phoneIsputaway.trim();
    }
}