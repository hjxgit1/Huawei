package com.cssl.entity;

import java.util.List;

public class Pversion {

    private List<Phone> phoneList;//商品

    private List<Version> versionList;//版本

    public List<Phone> getPhoneList() {
        return phoneList;
    }

    public void setPhoneList(List<Phone> phoneList) {
        this.phoneList = phoneList;
    }

    public List<Version> getVersionList() {
        return versionList;
    }

    public void setVersionList(List<Version> versionList) {
        this.versionList = versionList;
    }

    private Integer pvId;

    private Integer phoneId;

    private Integer phoneVersionid;

    public Integer getPvId() {
        return pvId;
    }

    public void setPvId(Integer pvId) {
        this.pvId = pvId;
    }

    public Integer getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(Integer phoneId) {
        this.phoneId = phoneId;
    }

    public Integer getPhoneVersionid() {
        return phoneVersionid;
    }

    public void setPhoneVersionid(Integer phoneVersionid) {
        this.phoneVersionid = phoneVersionid;
    }
}