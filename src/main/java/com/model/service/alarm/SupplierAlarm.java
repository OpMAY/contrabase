package com.model.service.alarm;

import com.model.common.Time;
import lombok.Data;

@Data
public class SupplierAlarm extends Time {
    private int no;
    private int supplier_no;
    private AlarmType type;
    private String content;
    private boolean read_status;
}
