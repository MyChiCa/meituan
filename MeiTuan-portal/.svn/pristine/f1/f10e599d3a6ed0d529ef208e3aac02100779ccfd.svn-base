package com.MeiTuan.portal.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.MeiTuan.portal.pojo.TRestaurant;
import com.MeiTuan.portal.pojo.TRestaurantExample;



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
    
    //查找全部餐馆
    List<TRestaurant> selectAll();
    //按页查找餐馆
	List<TRestaurant> selectByPage(int page, int pageSize);
	//根据餐馆类型选择
	List<TRestaurant> selectById(int rstrId);
}