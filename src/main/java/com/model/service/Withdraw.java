package com.model.service;

import com.model.common.Time;
import lombok.Data;

@Data
public class Withdraw extends Time {
    private int no;
    private int user_no;
    private String reason;
}
