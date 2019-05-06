package com.cssl.service;

import com.cssl.entity.Version;

import java.util.List;

public interface IVersionService {
    //版本
    List<Version> selectByVersion(Integer phoneVersionid);
}
