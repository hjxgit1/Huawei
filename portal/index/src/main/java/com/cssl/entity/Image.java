package com.cssl.entity;

public class Image {
    private Integer imageId;

    private Integer phoneId;

    private Integer phoneColorid;

    private String smallimagePath;

    private String bigimgPath;

    @Override
    public String toString() {
        return "Image{" + "imageId=" + imageId + ", phoneId=" + phoneId + ", phoneColorid=" + phoneColorid + ", smallimagePath='" + smallimagePath + '\'' + ", bigimgPath='" + bigimgPath + '\'' + '}';
    }

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
}