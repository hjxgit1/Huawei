package com.cssl.service.impl;

import com.cssl.dao.PhoneMapper;
import com.cssl.entity.Cart;
import com.cssl.entity.Phone;
import com.cssl.service.IPhoneService;
import com.cssl.utils.RedisClient;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Transactional
@MapperScan(basePackages = "com.cssl.dao")
@Component
public class PhoneServiceImpl implements IPhoneService {

    @Autowired
    private PhoneMapper pdao;

    @Autowired
    private RedisClient redisTemplate;

    @Override
    public Phone selectByPrimaryKey(Integer phoneId) {
        return pdao.selectByPrimaryKey(phoneId);
    }

    @Override
    public List<Cart> selectCartByRedis(String userName) {
        Object obj=redisTemplate.get(userName);
        List<Cart> cartList =(List<Cart>)obj;
        if(cartList== null){
            cartList=new ArrayList<Cart>();
        }
        return cartList;
    }

    @Override
    public void saveCartToRedis(String userName, List<Cart> clist) {
        redisTemplate.set(userName,clist);
    }

}
