package com.model.service.point.receipt;

import com.model.service.work.Work;
import com.model.service.work.WorkApply;
import lombok.Data;

@Data
public class PointReceiptWork {
    private int point_receipt_no;
    private Work work_info;
    private WorkApply work_apply_info;
}
