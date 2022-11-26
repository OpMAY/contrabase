package com.model;

import lombok.Data;

@Data
public class Admin {
    private int no;
    private String email;
    private String password;
    private String bank;
    private String account_number;
    private String account_name;
}
