package com.mapper;

import com.model.service.work.WorkApplyStock;

import java.util.ArrayList;

public interface WorkApplyStockMapper {

    void insertWorkStock(WorkApplyStock workApplyStock);

    int getWorkStocksLeftOnDate(WorkApplyStock workApplyStock);

    void updateWorkStock(WorkApplyStock workApplyStock);

    void deleteWorkStockByDate(WorkApplyStock workApplyStock);

    void deleteAllWorkStocksByWork(int work_no);

    ArrayList<WorkApplyStock> getWorkStocks(int work_no);

    boolean checkWorkStockLeft(int work_no);

    boolean checkWorkStockExists(int work_no);
}
