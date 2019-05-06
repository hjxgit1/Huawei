package com.cssl.dao;

import com.cssl.entity.Phone;
import com.cssl.entity.PhoneExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PhoneMapper {
    long countByExample(PhoneExample example);

    int deleteByExample(PhoneExample example);

    int deleteByPrimaryKey(Integer phoneId);

    int insert(Phone record);

    int insertSelective(Phone record);

    List<Phone> selectByExample(PhoneExample example);

    //按商品id查询详情
    Phone selectByPrimaryKey(Integer phoneId);

   //商品版本
    List<Phone> selectByVersionPhone(Integer phoneId);

    //商品赠品
    List<Phone> selectByPhoneGift(Integer phoneId);


    int updateByExampleSelective(@Param("record") Phone record, @Param("example") PhoneExample example);

    int updateByExample(@Param("record") Phone record, @Param("example") PhoneExample example);

    int updateByPrimaryKeySelective(Phone record);

    int updateByPrimaryKey(Phone record);
}