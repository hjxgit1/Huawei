package com.cssl.entity;

public class Category {
    private Integer hpcId;

    private String hpcName;

    private Integer hpcParentId;

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