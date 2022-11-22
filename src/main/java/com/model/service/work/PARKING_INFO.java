package com.model.service.work;

public enum PARKING_INFO {
    AVAILABLE("주차 가능"), UNAVAILABLE("주차 불가");
    private final String keyword;
    PARKING_INFO(String keyword) {
        this.keyword = keyword;
    }

    public String getKeyword() {
        return this.keyword;
    }
}
