package com.cssl.dao;

import com.cssl.entity.Detail;
import com.cssl.entity.DetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DetailMapper {
    long countByExample(DetailExample example);

    int deleteByExample(DetailExample example);

    int deleteByPrimaryKey(Integer oddId);

    int insert(Detail record);

    int insertSelective(Detail record);

    List<Detail> selectByExample(DetailExample example);

    Detail selectByPrimaryKey(Integer oddId);

    int updateByExampleSelective(@Param("record") Detail record, @Param("example") DetailExample example);

    int updateByExample(@Param("record") Detail record, @Param("example") DetailExample example);

    int updateByPrimaryKeySelective(Detail record);

    int updateByPrimaryKey(Detail record);
}