package com.cssl.service.impl;

import com.cssl.dao.IImageMapper;
import com.cssl.entity.Image;
import com.cssl.service.IImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service("imageService")
public class ImageService implements IImageService {

    @Autowired
    private IImageMapper imageDao;

    @Override
    public List<Image> selectImage(Integer phoneId) {
        return imageDao.selectImage(phoneId);
    }

}
