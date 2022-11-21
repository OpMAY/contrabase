package com.model.service;

import com.model.common.Time;
import lombok.Data;

@Data
public class Report extends Time {
    private int no;
    private int employee_no;
    private int work_no;
    private String content;
    private boolean status;
}
