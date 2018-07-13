package com.MeiTuan.pojo;

import java.util.Date;

public class TEvaluate {
    private Integer evaluateId;

    private Integer rstrId;

    private Integer userId;

    private Integer grade;

    private Date eDate;

    private String describe;

    public Integer getEvaluateId() {
        return evaluateId;
    }

    public void setEvaluateId(Integer evaluateId) {
        this.evaluateId = evaluateId;
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

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Date geteDate() {
        return eDate;
    }

    public void seteDate(Date eDate) {
        this.eDate = eDate;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe == null ? null : describe.trim();
    }
}