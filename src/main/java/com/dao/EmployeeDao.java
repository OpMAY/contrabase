package com.dao;

import com.mapper.EmployeeMapper;
import com.model.service.Employee;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Slf4j
public class EmployeeDao {
    private final EmployeeMapper mapper;
    private EmployeeDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(EmployeeMapper.class);
    }

    public void registerEmployee(Employee employee) {
        mapper.registerEmployee(employee);
    }

    public Employee getEmployeeInfoByUserNo(int user_no) {
        return mapper.getEmployeeInfoByUserNo(user_no);
    }

    public Employee getEmployeeInfoByNo(int no) {
        return mapper.getEmployeeInfoByNo(no);
    }

    public void updateEmployee(Employee employee) {
        mapper.updateEmployee(employee);
    }

    public void updateEmployeeMarketingAgree(Employee employee) {
        mapper.updateEmployeeMarketingAgree(employee);
    }

    public void updateEmployeePoint(Employee employee) {
        mapper.updateEmployeePoint(employee);
    }

    public ArrayList<Employee> getEmployees() {
        return mapper.getEmployees();
    }

    public void deleteEmployee(int no) {
        mapper.deleteEmployee(no);
    }
}
