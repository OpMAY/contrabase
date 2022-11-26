package com.service;


import com.dao.PointRequestDao;
import com.model.service.point.request.PointRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Slf4j
@RequiredArgsConstructor
public class PointRequestService {
    private final PointRequestDao pointRequestDao;

    public ArrayList<PointRequest> getPointRequestsByEmployeeNo(int employee_no) {
        return pointRequestDao.getPointRequestsByEmployeeNo(employee_no);
    }

    public void insertPointRequest(PointRequest pointRequest) {
        pointRequestDao.insertPointRequest(pointRequest);
    }
}
