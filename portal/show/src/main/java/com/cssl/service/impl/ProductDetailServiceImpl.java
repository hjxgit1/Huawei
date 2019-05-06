package com.cssl.service.impl;

import com.cssl.dao.PhoneMapper;
import com.cssl.entity.Phone;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cssl.service.*;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.cssl.dao")
@Service("productDetailServiceImpl")
public class ProductDetailServiceImpl implements IProductDetailService{

    @Autowired
    private PhoneMapper phoneMapper;

    @Override
    public List<Phone> selectByVersionPhone(Integer phoneId) {
        return phoneMapper.selectByVersionPhone(phoneId);
    }

    @Override
    public Phone selectByPrimaryKey(Integer phoneId) {
        return phoneMapper.selectByPrimaryKey(phoneId);
    }

    @Override
    public List<Phone> selectByPhoneGift(Integer phoneId) {
        return phoneMapper.selectByPhoneGift(phoneId);
    }

}
