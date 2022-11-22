package com.model.service.work;

public enum DISHING_INFO {
    AVAILABLE("식사 제공"), UNAVAILABLE("식사 미제공");
    private final String keyword;

    DISHING_INFO(String keyword) {
        this.keyword = keyword;
    }

    public String getKeyword() {
        return this.keyword;
    }
}
