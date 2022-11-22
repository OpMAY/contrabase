package com.dao;

import com.mapper.BannerMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class BannerDao {
    private final BannerMapper mapper;
    private BannerDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(BannerMapper.class);
    }
}
