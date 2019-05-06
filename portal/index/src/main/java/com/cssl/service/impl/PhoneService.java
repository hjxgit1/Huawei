package com.cssl.service.impl;

import com.cssl.dao.IPhoneMapper;
import com.cssl.entity.Phone;
import com.cssl.service.IPhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service("phoneService")
public class PhoneService implements IPhoneService{

    @Autowired
    private IPhoneMapper phoneDao;

    /* 菜单下的商品 */
    @Override
    public List<Phone> selectPhone(Integer hpcId) {
        return phoneDao.selectPhone(hpcId);
    }
}
