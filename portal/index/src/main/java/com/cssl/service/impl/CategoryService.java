package com.cssl.service.impl;

import com.cssl.dao.ICategoryMapper;
import com.cssl.entity.Category;
import com.cssl.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service("categoryService")
public class CategoryService implements ICategoryService{

    @Autowired
    private ICategoryMapper categoryDao;

    /* 一级菜单 */
    @Override
    public List<Category> selectCategory() {
        return categoryDao.selectCategory();
    }

    /* 二级菜单 */
    @Override
    public List<Category> selectSubmenu(Integer hpcId) {
        return categoryDao.selectSubmenu(hpcId);
    }

}
