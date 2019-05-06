package com.cssl.service;

import com.cssl.entity.User;

import java.util.List;

public interface IUserService {

    //根据昵称查询用户(评论）
    List<User> selectCommentNameByName(String nickName);


}
