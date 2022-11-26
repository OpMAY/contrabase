package com.mapper;

import com.model.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
    Admin getAdmin(@Param("admin_no") int admin_no);
}
