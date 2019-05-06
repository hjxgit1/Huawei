package com.cssl.dao;

import com.cssl.entity.Distribution;
import com.cssl.entity.DistributionExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DistributionMapper {
    long countByExample(DistributionExample example);

    int deleteByExample(DistributionExample example);

    int deleteByPrimaryKey(Integer odDistributionid);

    int insert(Distribution record);

    int insertSelective(Distribution record);

    List<Distribution> selectByExample(DistributionExample example);

    Distribution selectByPrimaryKey(Integer odDistributionid);

    int updateByExampleSelective(@Param("record") Distribution record, @Param("example") DistributionExample example);

    int updateByExample(@Param("record") Distribution record, @Param("example") DistributionExample example);

    int updateByPrimaryKeySelective(Distribution record);

    int updateByPrimaryKey(Distribution record);
}