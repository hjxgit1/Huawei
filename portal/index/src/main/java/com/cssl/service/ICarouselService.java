package com.cssl.service;


import com.cssl.entity.Carousel;

import java.util.List;


public interface ICarouselService {

    /* 查询全部PC轮播图 */
    public List<Carousel> selectCarousel();

}
