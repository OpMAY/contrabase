package com.service;


import com.dao.EmployeeDao;
import com.model.service.Employee;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class EmployeeService {
    private final EmployeeDao employeeDao;

    public Employee getEmployeeByUserNo(int user_no) {
        return employeeDao.getEmployeeInfoByUserNo(user_no);
    }

    public void updateEmployee(Employee employee) {
        employeeDao.updateEmployee(employee);
    }

    public void updateEmployeeMarketingAgree(Employee employee) {
        employeeDao.updateEmployeeMarketingAgree(employee);
    }
}
