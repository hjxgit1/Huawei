package com.cssl.dao;

import com.cssl.entity.Color;
import com.cssl.entity.ColorExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ColorMapper {
    long countByExample(ColorExample example);

    int deleteByExample(ColorExample example);

    int deleteByPrimaryKey(Integer phoneColorid);

    int insert(Color record);

    int insertSelective(Color record);

    List<Color> selectByExample(ColorExample example);

    //按id查询全部颜色
    List<Color> selectByPrimaryKey(Integer phone_colorid);

    int updateByExampleSelective(@Param("record") Color record, @Param("example") ColorExample example);

    int updateByExample(@Param("record") Color record, @Param("example") ColorExample example);

    int updateByPrimaryKeySelective(Color record);

    int updateByPrimaryKey(Color record);
}