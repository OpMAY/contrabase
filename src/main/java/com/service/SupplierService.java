package com.service;

import com.dao.SupplierDao;
import com.model.service.Supplier;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class SupplierService {
    private final SupplierDao supplierDao;

    public Supplier getSupplierByUserNo(int user_no) {
        return supplierDao.getSupplierInfoByUserNo(user_no);
    }

    public int registerSupplier(Supplier supplier) {
        supplierDao.registerSupplier(supplier);
        return supplier.getNo();
    }
}
