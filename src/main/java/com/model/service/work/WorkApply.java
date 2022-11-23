package com.model.service.work;

import com.model.common.Time;
import lombok.Data;

import java.time.LocalDate;

@Data
public class WorkApply extends Time {
    private int no;
    private int employee_no;
    private int work_no;
    private APPLY_STATUS status;
    private int point;
    private LocalDate target_date;
}
