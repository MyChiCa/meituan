package com.MeiTuan.pojo;

import java.util.HashMap;
import java.util.Map;

public class Mesge {
	private int code;

    //提示信息
    private String Mesge;

    //数据
    private Map<String, Object> info = new HashMap<String, Object>();

    public static Mesge success(String Mesge) {
        Mesge result = new Mesge();
        result.setCode(100);
        result.setMesge(Mesge);
        return result;
    }

    public static Mesge fail(String Mesge) {
        Mesge result = new Mesge();
        result.setCode(200);
        result.setMesge(Mesge);
        return result;
    }

    public Mesge add(String key, Object value) {
        this.getInfo().put(key, value);
        return this;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMesge() {
        return Mesge;
    }

    public void setMesge(String Mesge) {
        this.Mesge = Mesge;
    }

    public Map<String, Object> getInfo() {
        return info;
    }

    public void setInfo(Map<String, Object> info) {
        this.info = info;
    }
}

