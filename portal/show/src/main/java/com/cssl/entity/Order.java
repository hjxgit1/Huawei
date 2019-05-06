package com.cssl.entity;

import java.util.Date;

public class Order {
    private String odId;

    private Integer odUserId;

    private String odUserName;

    private String odUserAddress;

    private Date odCreateTime;

    private Integer odDistributionid;

    private Date odArrivaltime;

    private Double odCost;

    private Integer odStatus;

    private Integer odType;

    public String getOdId() {
        return odId;
    }

    public void setOdId(String odId) {
        this.odId = odId == null ? null : odId.trim();
    }

    public Integer getOdUserId() {
        return odUserId;
    }

    public void setOdUserId(Integer odUserId) {
        this.odUserId = odUserId;
    }

    public String getOdUserName() {
        return odUserName;
    }

    public void setOdUserName(String odUserName) {
        this.odUserName = odUserName == null ? null : odUserName.trim();
    }

    public String getOdUserAddress() {
        return odUserAddress;
    }

    public void setOdUserAddress(String odUserAddress) {
        this.odUserAddress = odUserAddress == null ? null : odUserAddress.trim();
    }

    public Date getOdCreateTime() {
        return odCreateTime;
    }

    public void setOdCreateTime(Date odCreateTime) {
        this.odCreateTime = odCreateTime;
    }

    public Integer getOdDistributionid() {
        return odDistributionid;
    }

    public void setOdDistributionid(Integer odDistributionid) {
        this.odDistributionid = odDistributionid;
    }

    public Date getOdArrivaltime() {
        return odArrivaltime;
    }

    public void setOdArrivaltime(Date odArrivaltime) {
        this.odArrivaltime = odArrivaltime;
    }

    public Double getOdCost() {
        return odCost;
    }

    public void setOdCost(Double odCost) {
        this.odCost = odCost;
    }

    public Integer getOdStatus() {
        return odStatus;
    }

    public void setOdStatus(Integer odStatus) {
        this.odStatus = odStatus;
    }

    public Integer getOdType() {
        return odType;
    }

    public void setOdType(Integer odType) {
        this.odType = odType;
    }
}