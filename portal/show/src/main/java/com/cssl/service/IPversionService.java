package com.cssl.service;

import com.cssl.entity.Pversion;

import java.util.List;

public interface IPversionService {

    //查询商品版本
    List<Pversion> selectVersionByPhoneId(Integer phoneId);
}
