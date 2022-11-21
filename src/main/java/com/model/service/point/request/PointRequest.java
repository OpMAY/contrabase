package com.model.service.point.request;

import com.model.common.Time;
import lombok.Data;

@Data
public class PointRequest extends Time {
    private int no;
    private int employee_no;
    private int point;
    private REQUEST_STATUS status;
}
