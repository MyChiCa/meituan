package com.MeiTuan.portal.mapper;


import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.MeiTuan.portal.pojo.TFood;
import com.MeiTuan.portal.pojo.TFoodExample;



public interface TFoodMapper {
    int countByExample(TFoodExample example);

    int deleteByExample(TFoodExample example);

    int deleteByPrimaryKey(Integer foodId);

    int insert(TFood record);

    int insertSelective(TFood record);

    List<TFood> selectByExampleWithBLOBs(TFoodExample example);

    List<TFood> selectByExample(TFoodExample example);
    
    //根据菜的Id查询
    TFood selectByPrimaryKey(Integer foodId);

    int updateByExampleSelective(@Param("record") TFood record, @Param("example") TFoodExample example);

    int updateByExampleWithBLOBs(@Param("record") TFood record, @Param("example") TFoodExample example);

    int updateByExample(@Param("record") TFood record, @Param("example") TFoodExample example);

    int updateByPrimaryKeySelective(TFood record);

    int updateByPrimaryKeyWithBLOBs(TFood record);

    int updateByPrimaryKey(TFood record);
    
    //根据菜品查询菜
    List<TFood> selectFoodByType(int menuId);
  
 
}