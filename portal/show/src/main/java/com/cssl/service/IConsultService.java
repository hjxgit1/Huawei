package com.cssl.service;

import com.cssl.entity.Consult;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IConsultService {
    //按商品id查询所有咨询
    List<Consult> selectAllByPhoneid(@Param("phoneId") Integer phoneId, @Param("pageIndex") int pageIndex, @Param("pageSize") int pageSize);

    //按商品id查询总数
    Integer selectCountByid(Integer phoneId);

    //新增咨询（用户）
    int insertConsultAboutUser(Consult userConsult);
}
