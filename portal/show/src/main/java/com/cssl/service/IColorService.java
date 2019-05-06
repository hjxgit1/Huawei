package com.cssl.service;

import com.cssl.entity.Color;

import java.util.List;

public interface IColorService {

    //按id查询全部颜色
    List<Color> selectByPrimaryKey(Integer phone_colorid);
}
