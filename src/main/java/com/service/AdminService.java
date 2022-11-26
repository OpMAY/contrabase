package com.service;


import com.dao.AdminDao;
import com.model.Admin;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class AdminService {
    private final AdminDao adminDao;

    public Admin getAdmin(int admin_no) {
        return adminDao.getAdmin(admin_no);
    }
}
