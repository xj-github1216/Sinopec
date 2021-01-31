package com.igeek.entity;

public class Employ {
    private Integer id;
    private String name;
    private String password;
    private Integer station_id;
    private String phone;

    public Employ() {
    }

    public Employ(Integer id, String name, String password, Integer station_id, String phone) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.station_id = station_id;
        this.phone = phone;
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
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 获取
     * @return station_id
     */
    public Integer getStation_id() {
        return station_id;
    }

    /**
     * 设置
     * @param station_id
     */
    public void setStation_id(Integer station_id) {
        this.station_id = station_id;
    }

    /**
     * 获取
     * @return phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置
     * @param phone
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String toString() {
        return "Employ{id = " + id + ", name = " + name + ", password = " + password + ", station_id = " + station_id + ", phone = " + phone + "}";
    }
}
