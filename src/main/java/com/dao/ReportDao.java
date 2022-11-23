package com.dao;

import com.mapper.ReportMapper;
import com.model.service.Report;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Slf4j
public class ReportDao {
    private final ReportMapper mapper;
    private ReportDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(ReportMapper.class);
    }

    public void insertReport(Report report) {
        mapper.insertReport(report);
    }

    public ArrayList<Report> getReports() {
        return mapper.getReports();
    }

    public ArrayList<Report> getEmployeeReports(int employee_no) {
        return mapper.getEmployeeReports(employee_no);
    }

    public ArrayList<Report> getWorkReports(int work_no) {
        return mapper.getWorkReports(work_no);
    }

    public Report getReportDetail(int no) {
        return mapper.getReportDetail(no);
    }

    public void updateReportStatus(int no) {
        mapper.updateReportStatus(no);
    }

    public void deleteReport(int no) {
        mapper.deleteReport(no);
    }
}
