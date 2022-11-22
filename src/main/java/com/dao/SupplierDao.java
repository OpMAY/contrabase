package com.dao;

import com.mapper.SupplierMapper;
import com.model.service.Supplier;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Slf4j
public class SupplierDao {
    private final SupplierMapper mapper;
    private SupplierDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(SupplierMapper.class);
    }

    public void registerSupplier(Supplier supplier) {
        mapper.registerSupplier(supplier);
    }

    public Supplier getSupplierInfoByUserNo(int user_no) {
        return mapper.getSupplierInfoByUserNo(user_no);
    }

    public Supplier getSupplierInfoByNo(int no) {
        return mapper.getSupplierInfoByNo(no);
    }

    public void applySupplier(int no) {
        mapper.applySupplier(no);
    }

    public void updateSupplier(Supplier supplier) {
        mapper.updateSupplier(supplier);
    }

    public ArrayList<Supplier> getSuppliers() {
        return mapper.getSuppliers();
    }

    public void deleteSupplier(int no) {
        mapper.deleteSupplier(no);
    }
}
