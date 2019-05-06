package com.cssl.service.impl;

import com.cssl.dao.ColorMapper;
import com.cssl.entity.Color;
import com.cssl.service.IColorService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.cssl.dao")
@Service("colorServiceImpl")
public class ColorServiceImpl implements IColorService{

    @Autowired
    private ColorMapper colorMapper;

    @Override
    public List<Color> selectByPrimaryKey(Integer phone_colorid) {

        return colorMapper.selectByPrimaryKey(phone_colorid);
    }
}
