package com.cssl.service.impl;

import com.cssl.dao.GiftMapper;
import com.cssl.entity.Gift;
import com.cssl.service.IGiftService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.cssl.dao")
@Service("giftServiceImpl")
public class GiftServiceImpl implements IGiftService{
    @Autowired
    private GiftMapper giftMapper;

    @Override
    public List<Gift> selectByPrimaryKey(Integer phoneId) {
        return giftMapper.selectByPrimaryKey(phoneId);
    }
}
