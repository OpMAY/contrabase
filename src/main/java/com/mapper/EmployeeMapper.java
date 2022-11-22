package com.mapper;

import com.model.service.Employee;

import java.util.ArrayList;

public interface EmployeeMapper {
    void registerEmployee(Employee employee);

    Employee getEmployeeInfoByUserNo(int user_no);

    Employee getEmployeeInfoByNo(int no);

    void updateEmployee(Employee employee);

    void updateEmployeeMarketingAgree(Employee employee);

    void updateEmployeePoint(Employee employee);

    ArrayList<Employee> getEmployees();

    void deleteEmployee(int no);
}
