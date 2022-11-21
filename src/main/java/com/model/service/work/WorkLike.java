package com.model.service.work;

import com.model.common.Time;
import lombok.Data;

@Data
public class WorkLike extends Time {
    private int employee_no;
    private int work_no;
}
