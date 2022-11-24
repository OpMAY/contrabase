package com.dao;

import com.mapper.WorkMapper;
import com.model.service.work.Work;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Slf4j
public class WorkDao {
    private final WorkMapper mapper;
    private WorkDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(WorkMapper.class);
    }

    public ArrayList<Work> getAllWorks() {
        return mapper.getAllWorks();
    }

    public void createWork(Work work) {
        mapper.createWork(work);
    }

    public void deleteWork(int no) {
        mapper.deleteWork(no);
    }

    public void updateWork(Work work) {
        mapper.updateWork(work);
    }

    public Work getWorkByNo(int no) {
        return mapper.getWorkByNo(no);
    }
}
