package com.cssl.dao;

import com.cssl.entity.Bankcard;
import com.cssl.entity.BankcardExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BankcardMapper {
    long countByExample(BankcardExample example);

    int deleteByExample(BankcardExample example);

    int insert(Bankcard record);

    int insertSelective(Bankcard record);

    List<Bankcard> selectByExample(BankcardExample example);

    int updateByExampleSelective(@Param("record") Bankcard record, @Param("example") BankcardExample example);

    int updateByExample(@Param("record") Bankcard record, @Param("example") BankcardExample example);
}