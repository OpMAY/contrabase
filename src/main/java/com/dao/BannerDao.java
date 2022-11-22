package com.dao;

import com.mapper.BannerMapper;
import com.model.service.Banner;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Slf4j
public class BannerDao {
    private final BannerMapper mapper;
    private BannerDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(BannerMapper.class);
    }

    public ArrayList<Banner> getBanners(){
        return mapper.getBanners();
    }

    public ArrayList<Banner> getActiveBanners(){
        return mapper.getActiveBanners();
    }

    public void registerBanner(Banner banner){
        mapper.registerBanner(banner);
    }

    public void deleteBanner(int no){
        mapper.deleteBanner(no);
    }

    public void updateBannerImage(Banner banner){
        mapper.updateBannerImage(banner);
    }

    public void updateBannerUrl(Banner banner){
        mapper.updateBannerUrl(banner);
    }

    public void updateBannerStatus(int no){
        mapper.updateBannerStatus(no);
    }

    public void updateBanner(Banner banner){
        mapper.updateBanner(banner);
    }
}
