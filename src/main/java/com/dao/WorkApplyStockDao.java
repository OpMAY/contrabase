package com.dao;

import com.mapper.WorkApplyStockMapper;
import com.model.service.work.WorkApplyStock;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Slf4j
public class WorkApplyStockDao {
    private final WorkApplyStockMapper mapper;

    private WorkApplyStockDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(WorkApplyStockMapper.class);
    }

    public void insertWorkStock(WorkApplyStock workApplyStock) {
        mapper.insertWorkStock(workApplyStock);
    }

    public int getWorkStocksLeftOnDate(WorkApplyStock workApplyStock) {
        return mapper.getWorkStocksLeftOnDate(workApplyStock);
    }

    public void updateWorkStock(WorkApplyStock workApplyStock) {
        mapper.updateWorkStock(workApplyStock);
    }

    public void deleteWorkStockByDate(WorkApplyStock workApplyStock) {
        mapper.deleteWorkStockByDate(workApplyStock);
    }

    public void deleteAllWorkStocksByWork(int work_no) {
        mapper.deleteAllWorkStocksByWork(work_no);
    }

    public ArrayList<WorkApplyStock> getWorkStocks(int work_no) {
        return mapper.getWorkStocks(work_no);
    }

    public boolean checkWorkStockLeft(int work_no) {
        return mapper.checkWorkStockLeft(work_no);
    }

    public boolean checkWorkStockExists(int work_no) {
        return mapper.checkWorkStockExists(work_no);
    }
}
