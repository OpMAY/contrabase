package com.mapper;

import com.model.service.work.Work;
import com.model.service.work.WorkLike;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface WorkLikeMapper {
    boolean checkEmployeeWorkLiked(@Param("work_no") int work_no, @Param("employee_no") int employee_no);

    ArrayList<Work> getEmployeeLikedWorks(int employee_no);

    void insertWorkLike(WorkLike workLike);

    void deleteWorkLike(WorkLike workLike);
}
