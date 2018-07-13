
package com.MeiTuan.portal.pojo;

public class TOrderDetails {
    private Integer odId;

    private Integer foodId;

    private Integer foodNum;

    private Float foodMoney;

    private Integer orderId;
    
    //新增的字段
    //总的数量
    private Integer sumNumber;
    //总的价格
    private Float sumMoney;
    public Integer getOdId() {
        return odId;
    }

    public Integer getSumNumber() {
		return sumNumber;
	}

	public void setSumNuber(Integer sumNumber) {
		this.sumNumber = sumNumber;
	}

	public Float getSumMoney() {
		return sumMoney;
	}

	public void setSumMoney(Float sumMoney) {
		this.sumMoney = sumMoney;
	}

	public void setOdId(Integer odId) {
        this.odId = odId;
    }

    public Integer getFoodId() {
        return foodId;
    }

    public void setFoodId(Integer foodId) {
        this.foodId = foodId;
    }

    public Integer getFoodNum() {
        return foodNum;
    }

    public void setFoodNum(Integer foodNum) {
        this.foodNum = foodNum;
    }

    public Float getFoodMoney() {
        return foodMoney;
    }

    public void setFoodMoney(Float foodMoney) {
        this.foodMoney = foodMoney;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }
}
