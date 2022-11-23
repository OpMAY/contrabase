package com.model.service;

public enum VEHICLE_TYPE {
    TRUCK(true);
    private final boolean transport;
    VEHICLE_TYPE(boolean transport) {
        this.transport = transport;
    }

    public boolean isTransport() {
        return this.transport;
    }
}
