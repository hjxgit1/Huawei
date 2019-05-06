package com.cssl.service;

import com.cssl.entity.Phone;

import java.util.List;

//商品
public interface IProductDetailService {

    //按商品id查询商品信息
    Phone selectByPrimaryKey(Integer phoneId);

   //商品版本
    List<Phone> selectByVersionPhone(Integer phoneId);

    //商品赠品
    List<Phone> selectByPhoneGift(Integer phoneId);
}
