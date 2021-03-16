package com.igeek.entity;

public class RepairCom {
    private Integer repairComId;
    private String address;
    private Integer masterId;
    private String masterName;

    public RepairCom() {
    }

    public RepairCom(Integer repairComId, String address, Integer masterId, String masterName) {
        this.repairComId = repairComId;
        this.address = address;
        this.masterId = masterId;
        this.masterName = masterName;
    }

    /**
     * 获取
     * @return repairComId
     */
    public Integer getRepairComId() {
        return repairComId;
    }

    /**
     * 设置
     * @param repairComId
     */
    public void setRepairComId(Integer repairComId) {
        this.repairComId = repairComId;
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
        return "RepairCom{repairComId = " + repairComId + ", address = " + address + ", masterId = " + masterId + ", masterName = " + masterName + "}";
    }
}
