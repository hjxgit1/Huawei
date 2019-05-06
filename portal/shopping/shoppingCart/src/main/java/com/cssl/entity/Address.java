package com.cssl.entity;

import java.util.Date;

public class Address {
    private Long id;

    private String userName;

    private String provinceId;

    private String cityId;

    private String townId;

    private String mobile;

    private String address;

    private String contact;

    private String isDefault;

    private String notes;

    private Date createDate;

    private String alies;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(String provinceId) {
        this.provinceId = provinceId == null ? null : provinceId.trim();
    }

    public String getCityId() {
        return cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId == null ? null : cityId.trim();
    }

    public String getTownId() {
        return townId;
    }

    public void setTownId(String townId) {
        this.townId = townId == null ? null : townId.trim();
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact == null ? null : contact.trim();
    }

    public String getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(String isDefault) {
        this.isDefault = isDefault == null ? null : isDefault.trim();
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes == null ? null : notes.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getAlies() {
        return alies;
    }

    public void setAlies(String alies) {
        this.alies = alies == null ? null : alies.trim();
    }

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", provinceId='" + provinceId + '\'' +
                ", cityId='" + cityId + '\'' +
                ", townId='" + townId + '\'' +
                ", mobile='" + mobile + '\'' +
                ", address='" + address + '\'' +
                ", contact='" + contact + '\'' +
                ", isDefault='" + isDefault + '\'' +
                ", notes='" + notes + '\'' +
                ", createDate=" + createDate +
                ", alies='" + alies + '\'' +
                '}';
    }
}