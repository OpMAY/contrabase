package com.mapper;

import com.model.service.work.APPLY_STATUS;
import com.model.service.work.Work;
import com.model.service.work.WorkApply;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface WorkApplyMapper {
    void insertWorkApply(WorkApply workApply);

    ArrayList<Work> getEmployeeApplyListByStatus(@Param("employee_no") int employee_no, @Param("status") APPLY_STATUS status);

    void updateWorkApplyStatus(@Param("no") int no, @Param("status") APPLY_STATUS status);

    boolean checkApplyExists(WorkApply workApply);

    void deleteWorkApply(int no);
}
