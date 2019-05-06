package com.cssl.dao;

import com.cssl.entity.Pversion;
import com.cssl.entity.PversionExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PversionMapper {
    long countByExample(PversionExample example);

    int deleteByExample(PversionExample example);

    int deleteByPrimaryKey(Integer pvId);

    int insert(Pversion record);

    int insertSelective(Pversion record);

    //查询商品版本
    List<Pversion> selectVersionByPhoneId(Integer phoneId);

    List<Pversion> selectByExample(PversionExample example);

    Pversion selectByPrimaryKey(Integer pvId);

    int updateByExampleSelective(@Param("record") Pversion record, @Param("example") PversionExample example);

    int updateByExample(@Param("record") Pversion record, @Param("example") PversionExample example);

    int updateByPrimaryKeySelective(Pversion record);

    int updateByPrimaryKey(Pversion record);
}