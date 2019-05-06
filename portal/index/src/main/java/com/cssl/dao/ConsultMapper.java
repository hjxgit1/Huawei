package com.cssl.dao;

import com.cssl.entity.Consult;
import com.cssl.entity.ConsultExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ConsultMapper {
    long countByExample(ConsultExample example);

    int deleteByExample(ConsultExample example);

    int deleteByPrimaryKey(Integer conId);

    int insert(Consult record);

    int insertSelective(Consult record);

    List<Consult> selectByExample(ConsultExample example);

    Consult selectByPrimaryKey(Integer conId);

    int updateByExampleSelective(@Param("record") Consult record, @Param("example") ConsultExample example);

    int updateByExample(@Param("record") Consult record, @Param("example") ConsultExample example);

    int updateByPrimaryKeySelective(Consult record);

    int updateByPrimaryKey(Consult record);
}