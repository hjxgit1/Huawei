package com.cssl.dao;

import com.cssl.entity.Version;
import com.cssl.entity.VersionExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VersionMapper {
    long countByExample(VersionExample example);

    int deleteByExample(VersionExample example);

    int deleteByPrimaryKey(Integer phoneVersionid);

    int insert(Version record);

    int insertSelective(Version record);

    List<Version> selectByExample(VersionExample example);

    //版本
    List<Version> selectByVersion(Integer phoneVersionid);

    Version selectByPrimaryKey(Integer phoneVersionid);

    int updateByExampleSelective(@Param("record") Version record, @Param("example") VersionExample example);

    int updateByExample(@Param("record") Version record, @Param("example") VersionExample example);

    int updateByPrimaryKeySelective(Version record);

    int updateByPrimaryKey(Version record);
}