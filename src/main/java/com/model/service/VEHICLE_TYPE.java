package com.model.service;

public enum VEHICLE_TYPE {
    TRUCK(true, "트럭"), CRANE(true, "고속 작업 크레인");
    private final boolean transport;
    private final String keyword;

    VEHICLE_TYPE(boolean transport, String keyword) {
        this.transport = transport;
        this.keyword = keyword;
    }

    public boolean isTransport() {
        return this.transport;
    }

    public String getKeyword() {
        return this.keyword;
    }
}
