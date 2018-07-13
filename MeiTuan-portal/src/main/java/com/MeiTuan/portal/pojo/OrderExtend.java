package com.MeiTuan.portal.pojo;

import java.util.Date;

public class OrderExtend {
	private Integer orderId;

    private Integer rstrId;

    private String foodName;

	private Integer userId;
    
	private Double takeFare;
	
    public Double getTakeFare() {
		return takeFare;
	}

	public void setTakeFare(Double takeFare) {
		this.takeFare = takeFare;
	}

	private Float money;

    private Date orderTime;
    
    private String foodImage;
    
    public String getFoodImage() {
		return foodImage;
	}

	public void setFoodImage(String foodImage) {
		this.foodImage = foodImage;
	}

	private Integer orderState;
    
    private String address;
    
    private Integer foodNum;

    private Float foodMoney;
    
    private String rstrName;
    
	public String getRstrName() {
		return rstrName;
	}

	public void setRstrName(String rstrName) {
		this.rstrName = rstrName;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getRstrId() {
		return rstrId;
	}

    public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	
	public void setRstrId(Integer rstrId) {
		this.rstrId = rstrId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Float getMoney() {
		return money;
	}

	public void setMoney(Float money) {
		this.money = money;
	}

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	public Integer getOrderState() {
		return orderState;
	}

	public void setOrderState(Integer orderState) {
		this.orderState = orderState;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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
    
    
}
