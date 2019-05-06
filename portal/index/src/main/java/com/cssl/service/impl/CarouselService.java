package com.cssl.service.impl;

import com.cssl.dao.ICarouselMapper;
import com.cssl.entity.Carousel;
import com.cssl.service.ICarouselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;

@Transactional
@Service("carouselService")
public class CarouselService implements ICarouselService {

    @Autowired
    private ICarouselMapper carouselDao;

    @Override
    public List<Carousel> selectCarousel() {
        return carouselDao.selectCarousel();
    }

}
