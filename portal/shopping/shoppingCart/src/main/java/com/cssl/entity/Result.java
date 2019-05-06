package com.cssl.entity;

public class Result {
    private boolean flag;

    private String desc;

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Result(){

    }

    public Result(boolean flag, String desc) {
        this.flag = flag;
        this.desc = desc;
    }

    public String toString() {
        return "Result{" +
                "flag=" + flag +
                ", desc='" + desc + '\'' +
                '}';
    }
}
