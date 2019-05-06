package com.cssl.entity;

public class Distribution {
    private Integer odDistributionid;

    private String odDistributionname;

    public Integer getOdDistributionid() {
        return odDistributionid;
    }

    public void setOdDistributionid(Integer odDistributionid) {
        this.odDistributionid = odDistributionid;
    }

    public String getOdDistributionname() {
        return odDistributionname;
    }

    public void setOdDistributionname(String odDistributionname) {
        this.odDistributionname = odDistributionname == null ? null : odDistributionname.trim();
    }
}