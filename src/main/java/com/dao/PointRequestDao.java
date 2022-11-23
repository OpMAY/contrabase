package com.dao;

import com.mapper.PointRequestMapper;
import com.model.service.point.request.PointRequest;
import com.model.service.point.request.REQUEST_STATUS;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Slf4j
public class PointRequestDao {
    private final PointRequestMapper mapper;

    private PointRequestDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(PointRequestMapper.class);
    }

    public void insertPointRequest(PointRequest pointRequest) {
        mapper.insertPointRequest(pointRequest);
    }

    public ArrayList<PointRequest> getAllPointRequests() {
        return mapper.getAllPointRequests();
    }

    public ArrayList<PointRequest> getPointRequestsByStatus(REQUEST_STATUS status) {
        return mapper.getPointRequestsByStatus(status);
    }

    public ArrayList<PointRequest> getPointRequestsByEmployeeNo(int employee_no) {
        return mapper.getPointRequestsByEmployeeNo(employee_no);
    }

    public PointRequest getPointRequestByNo(int no) {
        return mapper.getPointRequestByNo(no);
    }

    public void updatePointRequestStatus(int no, REQUEST_STATUS status) {
        mapper.updatePointRequestStatus(no, status);
    }

    public void deletePointRequest(int no) {
        mapper.deletePointRequest(no);
    }
}
