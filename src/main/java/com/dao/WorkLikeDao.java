package com.dao;

import com.mapper.WorkLikeMapper;
import com.model.service.work.Work;
import com.model.service.work.WorkLike;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Slf4j
public class WorkLikeDao {
    private final WorkLikeMapper mapper;

    private WorkLikeDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(WorkLikeMapper.class);
    }

    public boolean checkEmployeeWorkLiked(int work_no, int employee_no) {
        return mapper.checkEmployeeWorkLiked(work_no, employee_no);
    }

    public ArrayList<Work> getEmployeeLikedWorks(int employee_no) {
        return mapper.getEmployeeLikedWorks(employee_no);
    }

    public void insertWorkLike(WorkLike workLike) {
        mapper.insertWorkLike(workLike);
    }

    public void deleteWorkLike(WorkLike workLike) {
        mapper.deleteWorkLike(workLike);
    }
}
