package com.cssl.entity;

public class Detail {
    private Integer oddId;

    private String odId;

    private Integer phoneId;

    private Integer oddQuantity;

    private Double oddCost;

    public Integer getOddId() {
        return oddId;
    }

    public void setOddId(Integer oddId) {
        this.oddId = oddId;
    }

    public String getOdId() {
        return odId;
    }

    public void setOdId(String odId) {
        this.odId = odId == null ? null : odId.trim();
    }

    public Integer getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(Integer phoneId) {
        this.phoneId = phoneId;
    }

    public Integer getOddQuantity() {
        return oddQuantity;
    }

    public void setOddQuantity(Integer oddQuantity) {
        this.oddQuantity = oddQuantity;
    }

    public Double getOddCost() {
        return oddCost;
    }

    public void setOddCost(Double oddCost) {
        this.oddCost = oddCost;
    }
}