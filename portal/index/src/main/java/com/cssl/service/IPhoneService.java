package com.cssl.service;

import com.cssl.entity.Phone;

import java.util.List;

public interface IPhoneService {

    //根据菜单id查询相应的产品
    List<Phone> selectPhone(Integer hpcId);

}
