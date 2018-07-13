package com.MeiTuan.mapper;


import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.MeiTuan.pojo.TBusiness;
import com.MeiTuan.pojo.TBusinessExample;

public interface TBusinessMapper {
    int countByExample(TBusinessExample example);

    int deleteByExample(TBusinessExample example);

    int deleteByPrimaryKey(Integer businessId);

    int insert(TBusiness record);

    int insertSelective(TBusiness record);

    List<TBusiness> selectByExample(TBusinessExample example);

    TBusiness selectByPrimaryKey(Integer businessId);

    int updateByExampleSelective(@Param("record") TBusiness record, @Param("example") TBusinessExample example);

    int updateByExample(@Param("record") TBusiness record, @Param("example") TBusinessExample example);

    int updateByPrimaryKeySelective(TBusiness record);

    int updateByPrimaryKey(TBusiness record);
    
    TBusiness selectByTelAndPasw(TBusiness tBusiness);
}