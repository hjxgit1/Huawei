package com.cssl.service;

import com.cssl.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ICommentService {

    //按商品id查询所有评论
    List<Comment> selectAllByPhoneid(Integer phoneId);

    //按商品id查询总数
    Integer selectCountByid(Integer phoneId);
}
