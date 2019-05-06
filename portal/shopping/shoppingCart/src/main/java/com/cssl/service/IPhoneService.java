package com.cssl.service;

import com.cssl.entity.Cart;
import com.cssl.entity.Phone;

import java.util.List;

public interface IPhoneService {
    /**
     * 根据手机编号查询手机信息
     * @param phoneId
     * @return
     */
    Phone selectByPrimaryKey(Integer phoneId);


    /**
     * 查询缓存中的购物车
     */
    public List<Cart> selectCartByRedis(String userName);

    /**
     * 将购物车添加到缓存中
     */
    public void saveCartToRedis(String userName,List<Cart> clist);

}
