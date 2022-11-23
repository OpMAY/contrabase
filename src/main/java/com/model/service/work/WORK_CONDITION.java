package com.model.service.work;

public enum WORK_CONDITION {
    LICENSE("자격증 있음"), NONE("없음");
    private final String keyword;

    WORK_CONDITION(String keyword) {
        this.keyword = keyword;
    }

    public String getKeyword() {
        return this.keyword;
    }
}
