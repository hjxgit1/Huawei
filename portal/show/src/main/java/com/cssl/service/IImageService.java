package com.cssl.service;

import com.cssl.entity.Image;

import java.util.*;


public interface IImageService {

    //按商品id查询图片
    List<Image> selectImgByPhoneId(Integer phoneId);

    //查询商品颜色
    List<Image> selectcolorByPhoneId(Integer phoneId);
}
