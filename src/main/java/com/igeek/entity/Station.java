package com.igeek.entity;

public class Station {

    private Integer stationId;
    private String address;
    private Integer masterId;
    private String masterName;

    public Station() {
    }

    public Station(Integer stationId, String address, Integer masterId, String masterName) {
        this.stationId = stationId;
        this.address = address;
        this.masterId = masterId;
        this.masterName = masterName;
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
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取
     * @return masterId
     */
    public Integer getMasterId() {
        return masterId;
    }

    /**
     * 设置
     * @param masterId
     */
    public void setMasterId(Integer masterId) {
        this.masterId = masterId;
    }

    /**
     * 获取
     * @return masterName
     */
    public String getMasterName() {
        return masterName;
    }

    /**
     * 设置
     * @param masterName
     */
    public void setMasterName(String masterName) {
        this.masterName = masterName;
    }

    public String toString() {
        return "Station{stationId = " + stationId + ", address = " + address + ", masterId = " + masterId + ", masterName = " + masterName + "}";
    }
}
