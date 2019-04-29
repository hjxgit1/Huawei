package com.cssl.entity;

public class Carousel {
    private Integer carId;

    private String carPath;

    @Override
    public String toString() {
        return "Carousel{" +
                "carId=" + carId +
                ", carPath='" + carPath + '\'' +
                '}';
    }

    public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
        this.carId = carId;
    }

    public String getCarPath() {
        return carPath;
    }

    public void setCarPath(String carPath) {
        this.carPath = carPath == null ? null : carPath.trim();
    }
}