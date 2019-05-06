package com.cssl.dao;

import com.cssl.entity.Discount;
import com.cssl.entity.DiscountExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DiscountMapper {
    long countByExample(DiscountExample example);

    int deleteByExample(DiscountExample example);

    int insert(Discount record);

    int insertSelective(Discount record);

    List<Discount> selectByExample(DiscountExample example);

    int updateByExampleSelective(@Param("record") Discount record, @Param("example") DiscountExample example);

    int updateByExample(@Param("record") Discount record, @Param("example") DiscountExample example);
}