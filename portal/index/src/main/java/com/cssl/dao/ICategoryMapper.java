package com.cssl.dao;

import com.cssl.entity.Category;
import com.cssl.entity.CategoryExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ICategoryMapper {
    long countByExample(CategoryExample example);

    int deleteByExample(CategoryExample example);

    int deleteByPrimaryKey(Integer hpcId);

    int insert(Category record);

    int insertSelective(Category record);

    List<Category> selectByExample(CategoryExample example);

    Category selectByPrimaryKey(Integer hpcId);

    int updateByExampleSelective(@Param("record") Category record, @Param("example") CategoryExample example);

    int updateByExample(@Param("record") Category record, @Param("example") CategoryExample example);

    int updateByPrimaryKeySelective(Category record);

    int updateByPrimaryKey(Category record);

    /* 一级菜单 */
    List<Category> selectCategory();

    /* 二级菜单 */
    List<Category> selectSubmenu(Integer hpcId);
}