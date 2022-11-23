package com.mapper;

import com.model.service.work.Work;

import java.util.ArrayList;

public interface WorkMapper {
    ArrayList<Work> getAllWorks();

    void createWork(Work work);

    void deleteWork(int no);

    void updateWork(Work work);

    // TODO Filters
}
