package com.igeek.vo;

import java.util.List;

public class PageVo<T> {
    //查询条件
    private String style;
    //查询条件的值
    private String value;

    //当前页
    private Integer pageNow;
    //总页数
    private Integer myPages;
    //数据
    private List<T> list;

    public PageVo() {
    }

    public PageVo(String style, String value, Integer pageNow, Integer myPages, List<T> list) {
        this.style = style;
        this.value = value;
        this.pageNow = pageNow;
        this.myPages = myPages;
        this.list = list;
    }

    /**
     * 获取
     * @return style
     */
    public String getStyle() {
        return style;
    }

    /**
     * 设置
     * @param style
     */
    public void setStyle(String style) {
        this.style = style;
    }

    /**
     * 获取
     * @return value
     */
    public String getValue() {
        return value;
    }

    /**
     * 设置
     * @param value
     */
    public void setValue(String value) {
        this.value = value;
    }

    /**
     * 获取
     * @return pageNow
     */
    public Integer getPageNow() {
        return pageNow;
    }

    /**
     * 设置
     * @param pageNow
     */
    public void setPageNow(Integer pageNow) {
        this.pageNow = pageNow;
    }

    /**
     * 获取
     * @return myPages
     */
    public Integer getMyPages() {
        return myPages;
    }

    /**
     * 设置
     * @param myPages
     */
    public void setMyPages(Integer myPages) {
        this.myPages = myPages;
    }

    /**
     * 获取
     * @return list
     */
    public List<T> getList() {
        return list;
    }

    /**
     * 设置
     * @param list
     */
    public void setList(List<T> list) {
        this.list = list;
    }

    public String toString() {
        return "PageVo{style = " + style + ", value = " + value + ", pageNow = " + pageNow + ", myPages = " + myPages + ", list = " + list + "}";
    }
}
