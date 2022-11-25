package com.service;

import com.dao.PointReceiptDao;
import com.dao.WorkApplyDao;
import com.dao.WorkDao;
import com.google.gson.Gson;
import com.model.service.point.receipt.PointReceipt;
import com.model.service.point.receipt.RECEIPT_TYPE;
import com.model.service.work.Work;
import com.model.service.work.WorkApply;
import com.util.Encryption.EncryptionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Slf4j
@RequiredArgsConstructor
public class PointReceiptService {
    private final PointReceiptDao pointReceiptDao;
    private final WorkDao workDao;
    private final WorkApplyDao workApplyDao;
    private final EncryptionService encryptionService;

    public ArrayList<PointReceipt> getEmployeePointReceipt(int employee_no, RECEIPT_TYPE type) throws Exception {
        ArrayList<PointReceipt> pointReceipts = pointReceiptDao.getEmployeePointReceipt(employee_no, type);
        return pointReceipts;
    }
}
