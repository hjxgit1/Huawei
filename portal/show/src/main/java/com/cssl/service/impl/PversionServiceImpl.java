package com.cssl.service.impl;

import com.cssl.dao.PversionMapper;
import com.cssl.entity.Pversion;
import com.cssl.service.IPversionService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.cssl.dao")
@Service("pversionServiceImpl")
public class PversionServiceImpl implements IPversionService{

    @Autowired
    private PversionMapper pversionMapper;

    @Override
    public List<Pversion> selectVersionByPhoneId(Integer phoneId) {
        return pversionMapper.selectVersionByPhoneId(phoneId);
    }
}
