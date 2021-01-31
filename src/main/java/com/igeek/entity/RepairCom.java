package com.igeek.entity;

public class RepairCom {
    private Integer id;
    private String address;


    public RepairCom() {
    }

    public RepairCom(Integer id, String address) {
        this.id = id;
        this.address = address;
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

    public String toString() {
        return "RepairCom{id = " + id + ", address = " + address + "}";
    }
}
