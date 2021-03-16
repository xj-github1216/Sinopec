package com.igeek.entity;

public class Fault {
    private String faultStyle;
    private String faultContent;
    private Integer id;

    public Fault() {
    }

    public Fault(String faultStyle, String faultContent, Integer id) {
        this.faultStyle = faultStyle;
        this.faultContent = faultContent;
        this.id = id;
    }

    /**
     * 获取
     * @return faultStyle
     */
    public String getFaultStyle() {
        return faultStyle;
    }

    /**
     * 设置
     * @param faultStyle
     */
    public void setFaultStyle(String faultStyle) {
        this.faultStyle = faultStyle;
    }

    /**
     * 获取
     * @return faultContent
     */
    public String getFaultContent() {
        return faultContent;
    }

    /**
     * 设置
     * @param faultContent
     */
    public void setFaultContent(String faultContent) {
        this.faultContent = faultContent;
    }

    /**
     * 获取
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    public String toString() {
        return "Fault{faultStyle = " + faultStyle + ", faultContent = " + faultContent + ", id = " + id + "}";
    }
}
