package com.MeiTuan.mapper;



import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.MeiTuan.pojo.TOrderDetails;
import com.MeiTuan.pojo.TOrderDetailsExample;

public interface TOrderDetailsMapper {
    int countByExample(TOrderDetailsExample example);

    int deleteByExample(TOrderDetailsExample example);

    int deleteByPrimaryKey(Integer odId);

    int insert(TOrderDetails record);

    int insertSelective(TOrderDetails record);

    List<TOrderDetails> selectByExample(TOrderDetailsExample example);

    TOrderDetails selectByPrimaryKey(Integer odId);

    int updateByExampleSelective(@Param("record") TOrderDetails record, @Param("example") TOrderDetailsExample example);

    int updateByExample(@Param("record") TOrderDetails record, @Param("example") TOrderDetailsExample example);

    int updateByPrimaryKeySelective(TOrderDetails record);

    int updateByPrimaryKey(TOrderDetails record);
}