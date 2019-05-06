package com.cssl.service;

import com.cssl.entity.Gift;

import java.util.List;

public interface IGiftService {

    //根据商品id查全部
    List<Gift> selectByPrimaryKey(Integer phoneId);
}
