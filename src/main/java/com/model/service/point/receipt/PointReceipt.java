package com.model.service.point.receipt;

import com.model.common.Time;
import com.model.service.work.Work;
import com.model.service.work.WorkApply;
import lombok.Data;

@Data
public class PointReceipt extends Time {
    private int no;
    private int employee_no;
    private Integer work_no;
    private int point;
    private RECEIPT_TYPE type;

    private Work work;
    private WorkApply workApply;
}
