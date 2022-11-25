package com.service;

import com.dao.WorkApplyDao;
import com.dao.WorkDao;
import com.dao.WorkLikeDao;
import com.model.service.work.APPLY_STATUS;
import com.model.service.work.Work;
import com.util.Encryption.EncryptionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Slf4j
@RequiredArgsConstructor
public class WorkService {
    private final EncryptionService encryptionService;
    private final WorkDao workDao;
    private final WorkApplyDao workApplyDao;
    private final WorkLikeDao workLikeDao;

    public Work getWorkByNo(int no) {
        return workDao.getWorkByNo(no);
    }

    public ArrayList<Work> getWorks(int employee_no, APPLY_STATUS status) throws Exception {
        ArrayList<Work> workApplies = workApplyDao.getEmployeeApplyListByStatus(employee_no, status);
        for (Work work : workApplies) {
            work.setHash_no(encryptionService.encryptAES(String.valueOf(work.getNo()), true));
            work.set_like(workLikeDao.checkEmployeeWorkLiked(work.getNo(), employee_no));
        }
        return workApplies;
    }
}
