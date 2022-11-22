package com.dao;

import com.mapper.PointReceiptWorkMapper;
import com.model.service.point.receipt.PointReceiptWork;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class PointReceiptWorkDao {
    private final PointReceiptWorkMapper mapper;

    private PointReceiptWorkDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(PointReceiptWorkMapper.class);
    }

    public void insertPointReceiptWork(PointReceiptWork pointReceiptWork) {
        mapper.insertPointReceiptWork(pointReceiptWork);
    }

    public PointReceiptWork getPointReceiptWork(int receipt_no) {
        return mapper.getPointReceiptWork(receipt_no);
    }

    public void deletePointReceiptWork(int receipt_no) {
        mapper.deletePointReceiptWork(receipt_no);
    }
}
