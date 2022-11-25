package com.model.service.work;

public enum APPLY_STATUS {
    WORK_APPLY("운행 신청"), WORK_COMPLETE("운행 완료"), WORK_CANCEL("배차 취소");

    private final String keyword;

    APPLY_STATUS(String keyword) {
        this.keyword = keyword;
    }

    public String getKeyword() {
        return this.keyword;
    }
}
