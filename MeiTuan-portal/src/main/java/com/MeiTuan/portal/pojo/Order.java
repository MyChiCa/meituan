package com.MeiTuan.portal.pojo;

import java.util.Date;

public class Order {
    private int orderId;   

    private Integer rstrId;

    private Integer userId;

    private Date orderTime;

    private Integer orderState;

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Integer getRstrId() {
        return rstrId;
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

}