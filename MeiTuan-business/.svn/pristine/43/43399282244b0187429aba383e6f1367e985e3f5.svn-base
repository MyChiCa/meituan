package com.MeiTuan.mapper;


import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.MeiTuan.pojo.TBusiness;
import com.MeiTuan.pojo.TFood;
import com.MeiTuan.pojo.TFoodExample;

public interface TFoodMapper {
    int countByExample(TFoodExample example);

    int deleteByExample(TFoodExample example);

    int deleteByPrimaryKey(Integer foodId);

    int insert(TFood record);

    int insertSelective(TFood record);

    List<TFood> selectByExampleWithBLOBs(TFoodExample example);

    List<TFood> selectByExample(TFoodExample example);

    TFood selectByPrimaryKey(Integer foodId);

    int updateByExampleSelective(@Param("record") TFood record, @Param("example") TFoodExample example);

    int updateByExampleWithBLOBs(@Param("record") TFood record, @Param("example") TFoodExample example);

    int updateByExample(@Param("record") TFood record, @Param("example") TFoodExample example);

    int updateByPrimaryKeySelective(TFood record);

    int updateByPrimaryKeyWithBLOBs(TFood record);

    int updateByPrimaryKey(TFood record);
    
    List<TFood> selectAllFood(TBusiness tBusiness);
}