package com.service;

import com.dao.WorkLikeDao;
import com.model.service.work.WorkLike;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class WorkLikeService {
    private final WorkLikeDao workLikeDao;

    public boolean checkEmployeeWorkLiked(int work_no, int employee_no) {
        return workLikeDao.checkEmployeeWorkLiked(work_no, employee_no);
    }

    public void deleteWorkLike(WorkLike workLike) {
        workLikeDao.deleteWorkLike(workLike);
    }

    public void insertWorkLike(WorkLike workLike) {
        workLikeDao.insertWorkLike(workLike);
    }
}
