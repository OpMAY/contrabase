package com.aws.model;

public enum CDNUploadPath {
    TEST("test/"),
    BANNER("admin/banner/"),
    ADMIN("admin/"),
    USER("user/"),
    USER_LICENSE("user/license/"),
    USER_PROFILE("user/profile/");

    private final String path;

    CDNUploadPath(String path) {
        this.path = path;
    }

    public String getPath() {
        return path;
    }
}
