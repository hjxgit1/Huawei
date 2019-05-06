package com.cssl.entity;

import java.util.List;

public class Image {
    private List<Color> colorList;//颜色实体

    public List<Color> getColorList() {
        return colorList;
    }

    public void setColorList(List<Color> colorList) {
        this.colorList = colorList;
    }

    private Integer imageId;

    private Integer phoneId;

    private Integer phoneColorid;

    private String smallimagePath;

    private String bigimgPath;

    private String middleimgPath;

    public Integer getImageId() {
        return imageId;
    }

    public void setImageId(Integer imageId) {
        this.imageId = imageId;
    }

    public Integer getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(Integer phoneId) {
        this.phoneId = phoneId;
    }

    public Integer getPhoneColorid() {
        return phoneColorid;
    }

    public void setPhoneColorid(Integer phoneColorid) {
        this.phoneColorid = phoneColorid;
    }

    public String getSmallimagePath() {
        return smallimagePath;
    }

    public void setSmallimagePath(String smallimagePath) {
        this.smallimagePath = smallimagePath == null ? null : smallimagePath.trim();
    }

    public String getBigimgPath() {
        return bigimgPath;
    }

    public void setBigimgPath(String bigimgPath) {
        this.bigimgPath = bigimgPath == null ? null : bigimgPath.trim();
    }

    public String getMiddleimgPath() {
        return middleimgPath;
    }

    public void setMiddleimgPath(String middleimgPath) {
        this.middleimgPath = middleimgPath == null ? null : middleimgPath.trim();
    }
}