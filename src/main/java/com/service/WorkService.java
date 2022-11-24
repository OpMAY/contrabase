package com.service;

import com.dao.WorkDao;
import com.model.service.work.Work;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class WorkService {
    private final WorkDao workDao;
    public Work getWorkByNo(int no) {
        return workDao.getWorkByNo(no);
    }
}
