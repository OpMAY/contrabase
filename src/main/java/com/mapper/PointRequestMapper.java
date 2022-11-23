package com.mapper;

import com.model.service.point.request.PointRequest;
import com.model.service.point.request.REQUEST_STATUS;

import java.util.ArrayList;

public interface PointRequestMapper {
    void insertPointRequest(PointRequest pointRequest);

    ArrayList<PointRequest> getAllPointRequests();

    ArrayList<PointRequest> getPointRequestsByStatus(REQUEST_STATUS status);

    ArrayList<PointRequest> getPointRequestsByEmployeeNo(int employee_no);

    PointRequest getPointRequestByNo(int no);

    void updatePointRequestStatus(int no, REQUEST_STATUS status);

    void deletePointRequest(int no);
}
