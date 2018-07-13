
package com.MeiTuan.portal.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.MeiTuan.portal.pojo.TFood;
import com.MeiTuan.portal.pojo.TOrderDetails;
import com.MeiTuan.portal.pojo.TOrderDetailsExample;

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
    //插入详情
	void insertOrderDetById(int odId);
	//查找食物id对应详情
	TOrderDetails selectODByFood(Integer foodId);
	//根据食物Id插入详情
	void insertODDetail(TFood tFood);
	//更新已有食物的数量
	void updateOrderDetail(Float foodPrice);
	//查找总的数量和金钱
	TOrderDetails selectSum();
	//数量减一
	void subFoodById(TFood tFood);
	//数量加一
	void plusFoodById(TFood tFood);
	//删除所有
	void deleteAllOD();
	//确定订单号
	void updateOrderdDet(Integer orderId);
}
