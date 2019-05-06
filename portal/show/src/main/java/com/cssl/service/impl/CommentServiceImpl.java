package com.cssl.service.impl;

import com.cssl.dao.CommentMapper;
import com.cssl.entity.Comment;
import com.cssl.service.ICommentService;
import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.cssl.dao")
@Service("commentServiceImpl")
public class CommentServiceImpl implements ICommentService{

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public List<Comment> selectAllByPhoneid(Integer phoneId) {
        return commentMapper.selectAllByPhoneid(phoneId);
    }

    @Override
    public Integer selectCountByid(Integer phoneId) {
        return commentMapper.selectCountByid(phoneId);
    }
}
