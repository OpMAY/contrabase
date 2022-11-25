package com.service;

import com.dao.WorkLikeDao;
import com.model.service.work.Work;
import com.model.service.work.WorkLike;
import com.util.Encryption.EncryptionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Slf4j
@RequiredArgsConstructor
public class WorkLikeService {
    private final EncryptionService encryptionService;
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

    public ArrayList<Work> getEmployeeLikedWorks(int employee_no) throws Exception {
        ArrayList<Work> works = workLikeDao.getEmployeeLikedWorks(employee_no);
        for (Work work : works) {
            work.set_like(workLikeDao.checkEmployeeWorkLiked(work.getNo(), employee_no));
            work.setHash_no(encryptionService.encryptAES(String.valueOf(work.getNo()), true));
        }
        return works;
    }
}
