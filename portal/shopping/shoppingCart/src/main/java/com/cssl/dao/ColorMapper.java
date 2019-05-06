package com.cssl.dao;

import com.cssl.entity.Color;
import com.cssl.entity.ColorExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ColorMapper {
    long countByExample(ColorExample example);

    int deleteByExample(ColorExample example);

    int deleteByPrimaryKey(Integer phoneColorid);

    int insert(Color record);

    int insertSelective(Color record);

    List<Color> selectByExample(ColorExample example);

    Color selectByPrimaryKey(Integer phoneColorid);

    int updateByExampleSelective(@Param("record") Color record, @Param("example") ColorExample example);

    int updateByExample(@Param("record") Color record, @Param("example") ColorExample example);

    int updateByPrimaryKeySelective(Color record);

    int updateByPrimaryKey(Color record);
}