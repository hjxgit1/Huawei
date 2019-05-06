package com.cssl.dao;

import com.cssl.entity.Gift;
import com.cssl.entity.GiftExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GiftMapper {
    long countByExample(GiftExample example);

    int deleteByExample(GiftExample example);

    int deleteByPrimaryKey(Integer giftId);

    int insert(Gift record);

    int insertSelective(Gift record);

    List<Gift> selectByExample(GiftExample example);

    //根据商品id查全部
    List<Gift> selectByPrimaryKey(Integer phoneId);

    int updateByExampleSelective(@Param("record") Gift record, @Param("example") GiftExample example);

    int updateByExample(@Param("record") Gift record, @Param("example") GiftExample example);

    int updateByPrimaryKeySelective(Gift record);

    int updateByPrimaryKey(Gift record);
}