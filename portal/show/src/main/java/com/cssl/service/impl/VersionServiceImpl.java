package com.cssl.service.impl;

import com.cssl.dao.VersionMapper;
import com.cssl.entity.Version;
import com.cssl.service.IVersionService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.cssl.dao")
@Service("versionServiceImpl")
public class VersionServiceImpl implements IVersionService{
    @Autowired
    private VersionMapper versionMapper;

    @Override
    public List<Version> selectByVersion(Integer phoneVersionid) {
        return versionMapper.selectByVersion(phoneVersionid);
    }
}
