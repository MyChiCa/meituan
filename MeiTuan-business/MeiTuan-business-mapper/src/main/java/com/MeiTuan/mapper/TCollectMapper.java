package com.MeiTuan.mapper;


import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.MeiTuan.pojo.TCollect;
import com.MeiTuan.pojo.TCollectExample;
import com.MeiTuan.pojo.TCollectKey;

public interface TCollectMapper {
    int countByExample(TCollectExample example);

    int deleteByExample(TCollectExample example);

    int deleteByPrimaryKey(TCollectKey key);

    int insert(TCollect record);

    int insertSelective(TCollect record);

    List<TCollect> selectByExample(TCollectExample example);

    TCollect selectByPrimaryKey(TCollectKey key);

    int updateByExampleSelective(@Param("record") TCollect record, @Param("example") TCollectExample example);

    int updateByExample(@Param("record") TCollect record, @Param("example") TCollectExample example);

    int updateByPrimaryKeySelective(TCollect record);

    int updateByPrimaryKey(TCollect record);
}