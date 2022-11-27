package com.model.service.point.request;

public enum REQUEST_STATUS {
    CHARGING("충전 중"), CHARGE("충전 완료"),
    REFUND("환불 완료");

    private final String keyword;

    REQUEST_STATUS(String keyword) {
        this.keyword = keyword;
    }

    public String getKeyword() {
        return this.keyword;
    }
}
