package com.cssl.dao;

import com.cssl.entity.Favorable;
import com.cssl.entity.FavorableExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FavorableMapper {
    long countByExample(FavorableExample example);

    int deleteByExample(FavorableExample example);

    int insert(Favorable record);

    int insertSelective(Favorable record);

    List<Favorable> selectByExample(FavorableExample example);

    int updateByExampleSelective(@Param("record") Favorable record, @Param("example") FavorableExample example);

    int updateByExample(@Param("record") Favorable record, @Param("example") FavorableExample example);
}