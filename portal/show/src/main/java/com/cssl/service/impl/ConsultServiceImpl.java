package com.cssl.service.impl;

import com.cssl.dao.ConsultMapper;
import com.cssl.entity.Consult;
import com.cssl.service.IConsultService;
import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.cssl.dao")
@Service("consultServiceImpl")
public class ConsultServiceImpl implements IConsultService{
    @Autowired
    private ConsultMapper consultMapper;

    @Override
    public int insertConsultAboutUser(Consult userConsult) {
        return consultMapper.insertConsultAboutUser(userConsult);
    }

    @Override
    public List<Consult> selectAllByPhoneid(@Param("phoneId") Integer phoneId, @Param("pageIndex") int pageIndex, @Param("pageSize") int pageSize) {
        return consultMapper.selectAllByPhoneid(phoneId,pageIndex,pageSize);
    }

    @Override
    public Integer selectCountByid(Integer phoneId) {
        return consultMapper.selectCountByid(phoneId);
    }
}
