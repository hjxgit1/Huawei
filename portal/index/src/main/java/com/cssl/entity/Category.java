package com.cssl.entity;

import java.util.List;

public class Category {

    private Integer hpcId;

    private String hpcName;

    private Integer hpcParentId;

    private List<Category> categoryList;

    private List<Phone> phonesList;



    @Override
    public String toString() {
        return "Category{" +
                "hpcId=" + hpcId +
                ", hpcName='" + hpcName + '\'' +
                ", hpcParentId=" + hpcParentId +
                ", categoryList=" + categoryList +
                ", phonesList=" + phonesList +
                '}';
    }

    public List<Phone> getPhonesList() {
        return phonesList;
    }

    public void setPhonesList(List<Phone> phonesList) {
        this.phonesList = phonesList;
    }

    public List<Category> getCategoryList() {
        return categoryList;
    }

    public void setCategoryList(List<Category> categoryList) {
        this.categoryList = categoryList;
    }

    public Integer getHpcId() {
        return hpcId;
    }

    public void setHpcId(Integer hpcId) {
        this.hpcId = hpcId;
    }

    public String getHpcName() {
        return hpcName;
    }

    public void setHpcName(String hpcName) {
        this.hpcName = hpcName == null ? null : hpcName.trim();
    }

    public Integer getHpcParentId() {
        return hpcParentId;
    }

    public void setHpcParentId(Integer hpcParentId) {
        this.hpcParentId = hpcParentId;
    }
}