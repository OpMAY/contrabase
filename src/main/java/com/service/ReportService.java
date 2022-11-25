package com.service;

import com.dao.ReportDao;
import com.model.service.Report;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Slf4j
@RequiredArgsConstructor
public class ReportService {
    private final ReportDao reportDao;

    public boolean insertReport(Report report) {
        ArrayList<Report> reports = reportDao.getEmployeeReports(report.getEmployee_no());
        boolean check = false;
        for (Report dump : reports) {
            if (dump.getWork_no() == report.getWork_no()) {
                check = true;
            }
        }
        if (check) {
            return false;
        } else {
            reportDao.insertReport(report);
            return true;
        }
    }
}