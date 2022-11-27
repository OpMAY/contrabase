package com.dao;

import com.mapper.WorkApplyMapper;
import com.model.service.work.APPLY_STATUS;
import com.model.service.work.Work;
import com.model.service.work.WorkApply;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Slf4j
public class WorkApplyDao {
    private final WorkApplyMapper mapper;

    private WorkApplyDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(WorkApplyMapper.class);
    }

    public void insertWorkApply(WorkApply workApply) {
        mapper.insertWorkApply(workApply);
    }

    public ArrayList<Work> getEmployeeApplyListByStatus(int employee_no, APPLY_STATUS status) {
        return mapper.getEmployeeApplyListByStatus(employee_no, status);
    }

    public void updateWorkApplyStatus(int no, APPLY_STATUS status) {
        mapper.updateWorkApplyStatus(no, status);
    }

    public boolean checkApplyExists(WorkApply workApply) {
        return mapper.checkApplyExists(workApply);
    }

    public void deleteWorkApply(int no) {
        mapper.deleteWorkApply(no);
    }

    public WorkApply getWorkApply(int employee_no, int work_no) {
        return mapper.getWorkApply(employee_no, work_no);
    }
}
