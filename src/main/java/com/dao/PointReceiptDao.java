package com.dao;

import com.mapper.PointReceiptMapper;
import com.model.service.point.receipt.PointReceipt;
import com.model.service.point.receipt.RECEIPT_TYPE;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Slf4j
public class PointReceiptDao {
    private final PointReceiptMapper mapper;

    private PointReceiptDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(PointReceiptMapper.class);
    }

    public void insertPointReceipt(PointReceipt pointReceipt) {
        mapper.insertPointReceipt(pointReceipt);
    }

    public ArrayList<PointReceipt> getEmployeePointReceipt(int employee_no, RECEIPT_TYPE type) {
        return mapper.getEmployeePointReceipt(employee_no, type);
    }

    public void deletePointReceipt(int no) {
        mapper.deletePointReceipt(no);
    }
}
