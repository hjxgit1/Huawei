package com.cssl.dao;

import com.cssl.entity.Phone;
import com.cssl.entity.PhoneExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PhoneMapper {
    long countByExample(PhoneExample example);

    int deleteByExample(PhoneExample example);

    int deleteByPrimaryKey(Integer phoneId);

    int insert(Phone record);

    int insertSelective(Phone record);

    List<Phone> selectByExample(PhoneExample example);

    Phone selectByPrimaryKey(Integer phoneId);

    int updateByExampleSelective(@Param("record") Phone record, @Param("example") PhoneExample example);

    int updateByExample(@Param("record") Phone record, @Param("example") PhoneExample example);

    int updateByPrimaryKeySelective(Phone record);

    int updateByPrimaryKey(Phone record);
}