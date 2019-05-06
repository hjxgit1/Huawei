package com.cssl.dao;


import com.cssl.entity.Consult;
import com.cssl.entity.ConsultExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ConsultMapper {
    long countByExample(ConsultExample example);

    int deleteByExample(ConsultExample example);

    int deleteByPrimaryKey(Integer conId);

    //按商品id查询所有咨询
    List<Consult> selectAllByPhoneid(@Param("phoneId") Integer phoneId, @Param("pageIndex") int pageIndex,@Param("pageSize") int pageSize);

    //按商品id查询总数
    Integer selectCountByid(Integer phoneId);

    //新增咨询（用户）
    int insertConsultAboutUser(Consult userConsult);

    int insert(Consult record);

    int insertSelective(Consult record);

    List<Consult> selectByExample(ConsultExample example);

    Consult selectByPrimaryKey(Integer conId);

    int updateByExampleSelective(@Param("record") Consult record, @Param("example") ConsultExample example);

    int updateByExample(@Param("record") Consult record, @Param("example") ConsultExample example);

    int updateByPrimaryKeySelective(Consult record);

    int updateByPrimaryKey(Consult record);
}