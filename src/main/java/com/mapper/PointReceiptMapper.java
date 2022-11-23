package com.mapper;

import com.model.service.point.receipt.PointReceipt;
import com.model.service.point.receipt.RECEIPT_TYPE;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface PointReceiptMapper {
    void insertPointReceipt(PointReceipt pointReceipt);

    ArrayList<PointReceipt> getEmployeePointReceipt(@Param("employee_no") int employee_no, @Param("type") RECEIPT_TYPE type);

    void deletePointReceipt(int no);
}
