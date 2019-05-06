package com.cssl.service.impl;

import com.cssl.dao.UserMapper;
import com.cssl.entity.User;
import com.cssl.service.IUserService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.cssl.dao")
@Service("userServiceImpl")
public class UserServiceImpl implements IUserService{
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> selectCommentNameByName(String nickName) {
        return userMapper.selectCommentNameByName(nickName);
    }

}
