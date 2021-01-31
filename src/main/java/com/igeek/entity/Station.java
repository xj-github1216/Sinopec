package com.igeek.entity;

public class Station {
    private Integer id;
    private String address;
    private Integer count;


    public Station() {
    }

    public Station(Integer id, String address, Integer count) {
        this.id = id;
        this.address = address;
        this.count = count;
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

    /**
     * 获取
     * @return count
     */
    public Integer getCount() {
        return count;
    }

    /**
     * 设置
     * @param count
     */
    public void setCount(Integer count) {
        this.count = count;
    }

    public String toString() {
        return "Station{id = " + id + ", address = " + address + ", count = " + count + "}";
    }
}
