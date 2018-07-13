package com.MeiTuan.portal.mapper;


import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.MeiTuan.portal.pojo.TRestaurantType;
import com.MeiTuan.portal.pojo.TRestaurantTypeExample;

public interface TRestaurantTypeMapper {
    int countByExample(TRestaurantTypeExample example);

    int deleteByExample(TRestaurantTypeExample example);

    int deleteByPrimaryKey(Integer typeId);

    int insert(TRestaurantType record);

    int insertSelective(TRestaurantType record);

    List<TRestaurantType> selectByExample(TRestaurantTypeExample example);

    TRestaurantType selectByPrimaryKey(Integer typeId);

    int updateByExampleSelective(@Param("record") TRestaurantType record, @Param("example") TRestaurantTypeExample example);

    int updateByExample(@Param("record") TRestaurantType record, @Param("example") TRestaurantTypeExample example);

    int updateByPrimaryKeySelective(TRestaurantType record);

    int updateByPrimaryKey(TRestaurantType record);
}