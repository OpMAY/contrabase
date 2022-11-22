package com.mapper;

import com.model.service.point.receipt.PointReceiptWork;

public interface PointReceiptWorkMapper {
    void insertPointReceiptWork(PointReceiptWork pointReceiptWork);

    PointReceiptWork getPointReceiptWork(int receipt_no);

    void deletePointReceiptWork(int receipt_no);
}
