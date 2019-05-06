package com.cssl.service.impl;

import com.cssl.dao.ImageMapper;
import com.cssl.entity.Image;
import com.cssl.service.IImageService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;


@Transactional
@MapperScan(basePackages = "com.cssl.dao")
@Service("imageServiceImpl")
public class ImageServiceImpl implements IImageService{

    @Autowired
    private ImageMapper imgMapper;

    @Override
    public List<Image> selectImgByPhoneId(Integer phoneId) {
        return imgMapper.selectImgByPhoneId(phoneId);
    }

    @Override
    public List<Image> selectcolorByPhoneId(Integer phoneId) {
        return imgMapper.selectcolorByPhoneId(phoneId);
    }
}
