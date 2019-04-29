package com.cssl.service;

import com.cssl.entity.Category;

import java.util.List;

public interface ICategoryService {

    /* 一级菜单 */
    List<Category> selectCategory();

    /* 二级菜单 */
    List<Category> selectSubmenu(Integer hpcId);

}
