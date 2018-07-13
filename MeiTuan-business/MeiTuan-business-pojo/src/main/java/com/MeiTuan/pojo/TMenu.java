package com.MeiTuan.pojo;

public class TMenu {
    private Integer menuId;

    private String menuName;

    private Integer rstrId;

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName == null ? null : menuName.trim();
    }

    public Integer getRstrId() {
        return rstrId;
    }

    public void setRstrId(Integer rstrId) {
        this.rstrId = rstrId;
    }
}