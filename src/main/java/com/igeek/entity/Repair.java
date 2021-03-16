package com.igeek.entity;

public class Repair {
    private Integer id;
    private String faultStyle;
    private String faultDescribe;
    private Integer employId;
    private String state;
    private Integer servicemanId;
    private String repairDate;

    public Repair() {
    }

    public Repair(Integer id, String faultStyle, String faultDescribe, Integer employId, String state, Integer servicemanId, String repairDate) {
        this.id = id;
        this.faultStyle = faultStyle;
        this.faultDescribe = faultDescribe;
        this.employId = employId;
        this.state = state;
        this.servicemanId = servicemanId;
        this.repairDate = repairDate;
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
     * @return faultDescribe
     */
    public String getFaultDescribe() {
        return faultDescribe;
    }

    /**
     * 设置
     * @param faultDescribe
     */
    public void setFaultDescribe(String faultDescribe) {
        this.faultDescribe = faultDescribe;
    }

    /**
     * 获取
     * @return employId
     */
    public Integer getEmployId() {
        return employId;
    }

    /**
     * 设置
     * @param employId
     */
    public void setEmployId(Integer employId) {
        this.employId = employId;
    }

    /**
     * 获取
     * @return state
     */
    public String getState() {
        return state;
    }

    /**
     * 设置
     * @param state
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * 获取
     * @return servicemanId
     */
    public Integer getServicemanId() {
        return servicemanId;
    }

    /**
     * 设置
     * @param servicemanId
     */
    public void setServicemanId(Integer servicemanId) {
        this.servicemanId = servicemanId;
    }

    /**
     * 获取
     * @return repairDate
     */
    public String getRepairDate() {
        return repairDate;
    }

    /**
     * 设置
     * @param repairDate
     */
    public void setRepairDate(String repairDate) {
        this.repairDate = repairDate;
    }

    public String toString() {
        return "Repair{id = " + id + ", faultStyle = " + faultStyle + ", faultDescribe = " + faultDescribe + ", employId = " + employId + ", state = " + state + ", servicemanId = " + servicemanId + ", repairDate = " + repairDate + "}";
    }
}
