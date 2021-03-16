package com.igeek.entity;

public class RepairDetail {
    private Integer id;
    private String faultStyle;
    private String faultDescribe;
    private Integer employId;
    private String employName;
    private String employPhone;
    private Integer stationId;
    private String stationAddress;
    private String repairDate;
    private String state;

    public RepairDetail() {
    }

    public RepairDetail(Integer id, String faultStyle, String faultDescribe, Integer employId, String employName, String employPhone, Integer stationId, String stationAddress, String repairDate, String state) {
        this.id = id;
        this.faultStyle = faultStyle;
        this.faultDescribe = faultDescribe;
        this.employId = employId;
        this.employName = employName;
        this.employPhone = employPhone;
        this.stationId = stationId;
        this.stationAddress = stationAddress;
        this.repairDate = repairDate;
        this.state = state;
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
     * @return employName
     */
    public String getEmployName() {
        return employName;
    }

    /**
     * 设置
     * @param employName
     */
    public void setEmployName(String employName) {
        this.employName = employName;
    }

    /**
     * 获取
     * @return employPhone
     */
    public String getEmployPhone() {
        return employPhone;
    }

    /**
     * 设置
     * @param employPhone
     */
    public void setEmployPhone(String employPhone) {
        this.employPhone = employPhone;
    }

    /**
     * 获取
     * @return stationId
     */
    public Integer getStationId() {
        return stationId;
    }

    /**
     * 设置
     * @param stationId
     */
    public void setStationId(Integer stationId) {
        this.stationId = stationId;
    }

    /**
     * 获取
     * @return stationAddress
     */
    public String getStationAddress() {
        return stationAddress;
    }

    /**
     * 设置
     * @param stationAddress
     */
    public void setStationAddress(String stationAddress) {
        this.stationAddress = stationAddress;
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

    public String toString() {
        return "RepairDetail{id = " + id + ", faultStyle = " + faultStyle + ", faultDescribe = " + faultDescribe + ", employId = " + employId + ", employName = " + employName + ", employPhone = " + employPhone + ", stationId = " + stationId + ", stationAddress = " + stationAddress + ", repairDate = " + repairDate + ", state = " + state + "}";
    }
}
