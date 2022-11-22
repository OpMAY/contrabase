package com.mapper;

import com.model.service.Banner;

import java.util.ArrayList;

public interface BannerMapper {
    ArrayList<Banner> getBanners();

    ArrayList<Banner> getActiveBanners();

    void registerBanner(Banner banner);

    void deleteBanner(int no);

    void updateBannerImage(Banner banner);

    void updateBannerUrl(Banner banner);

    void updateBannerStatus(int no);

    void updateBanner(Banner banner);
}
