package com.cssl.dao;

import com.cssl.entity.Comment;
import com.cssl.entity.CommentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentMapper {
    long countByExample(CommentExample example);

    int deleteByExample(CommentExample example);

    int deleteByPrimaryKey(Integer comId);

    int insert(Comment record);

    int insertSelective(Comment record);

    //按商品id查询所有评论
    List<Comment> selectAllByPhoneid(Integer phoneId);

    //按商品id查询总数
    Integer selectCountByid(Integer phoneId);

    List<Comment> selectByExample(CommentExample example);

    Comment selectByPrimaryKey(Integer comId);

    int updateByExampleSelective(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByExample(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}