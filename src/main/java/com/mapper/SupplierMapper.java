package com.mapper;

import com.model.service.Supplier;

import java.util.ArrayList;

public interface SupplierMapper {
    void registerSupplier(Supplier supplier);

    Supplier getSupplierInfoByUserNo(int user_no);

    Supplier getSupplierInfoByNo(int no);

    void applySupplier(int no);

    void updateSupplier(Supplier supplier);

    ArrayList<Supplier> getSuppliers();

    void deleteSupplier(int no);

    boolean checkSupplierApplied(int no);
}
