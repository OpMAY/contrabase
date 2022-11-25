package com.model.service.point.receipt;

public enum RECEIPT_TYPE {
    USE("사용", "-"), CANCEL("반환", "+");

    private final String keyword;
    private final String sign;

    RECEIPT_TYPE(String keyword, String sign) {
        this.keyword = keyword;
        this.sign = sign;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public String getSign() {
        return this.sign;
    }
}
