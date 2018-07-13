package com.MeiTuan.mapper;


import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.MeiTuan.pojo.TRestaurant;
import com.MeiTuan.pojo.TRestaurantExample;

public interface TRestaurantMapper {
    int countByExample(TRestaurantExample example);

    int deleteByExample(TRestaurantExample example);

    int deleteByPrimaryKey(Integer rstrId);

    int insert(TRestaurant record);

    int insertSelective(TRestaurant record);

    List<TRestaurant> selectByExampleWithBLOBs(TRestaurantExample example);

    List<TRestaurant> selectByExample(TRestaurantExample example);

    TRestaurant selectByPrimaryKey(Integer rstrId);

    int updateByExampleSelective(@Param("record") TRestaurant record, @Param("example") TRestaurantExample example);

    int updateByExampleWithBLOBs(@Param("record") TRestaurant record, @Param("example") TRestaurantExample example);

    int updateByExample(@Param("record") TRestaurant record, @Param("example") TRestaurantExample example);

    int updateByPrimaryKeySelective(TRestaurant record);

    int updateByPrimaryKeyWithBLOBs(TRestaurant record);

    int updateByPrimaryKey(TRestaurant record);
    
    List<TRestaurant> selectAllRest();
}