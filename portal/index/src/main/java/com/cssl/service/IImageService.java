package com.cssl.service;

import com.cssl.entity.Image;

import java.util.List;

public interface IImageService {

    /*  根据phoneId查询图片 */
    List<Image> selectImage(Integer phoneId);

}
