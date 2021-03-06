package com.cssl.dao;

import com.cssl.entity.Image;
import com.cssl.entity.ImageExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IImageMapper {

    /*  根据phoneId查询图片 */
    List<Image> selectImage(Integer phoneId);

    long countByExample(ImageExample example);

    int deleteByExample(ImageExample example);

    int deleteByPrimaryKey(Integer imageId);

    int insert(Image record);

    int insertSelective(Image record);

    List<Image> selectByExample(ImageExample example);

    Image selectByPrimaryKey(Integer imageId);

    int updateByExampleSelective(@Param("record") Image record, @Param("example") ImageExample example);

    int updateByExample(@Param("record") Image record, @Param("example") ImageExample example);

    int updateByPrimaryKeySelective(Image record);

    int updateByPrimaryKey(Image record);
}