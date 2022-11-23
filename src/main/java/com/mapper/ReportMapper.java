package com.mapper;

import com.model.service.Report;

import java.util.ArrayList;

public interface ReportMapper {
    void insertReport(Report report);

    ArrayList<Report> getReports();

    ArrayList<Report> getEmployeeReports(int employee_no);

    ArrayList<Report> getWorkReports(int work_no);

    Report getReportDetail(int no);

    void updateReportStatus(int no);

    void deleteReport(int no);
}
