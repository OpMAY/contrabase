package com.model.service.work;

import lombok.Data;

import java.time.LocalDate;

@Data
public class WorkApplyStock {
    private int work_no;
    private LocalDate target_date;
    private int max_count;
}
