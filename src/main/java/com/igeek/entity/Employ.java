package com.igeek.entity;

public class Employ {
    private Integer employId;
    private String name;
    private String username;
    private String password;
    private String phone;
    private String personId;
    private Integer stationId;
    private String address;
    private String entryDate;

    public Employ() {
    }

    public Employ(Integer employId, String name, String username, String password, String phone, String personId, Integer stationId, String address, String entryDate) {
        this.employId = employId;
        this.name = name;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.personId = personId;
        this.stationId = stationId;
        this.address = address;
        this.entryDate = entryDate;
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
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
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

    /**
     * 获取
     * @return personId
     */
    public String getPersonId() {
        return personId;
    }

    /**
     * 设置
     * @param personId
     */
    public void setPersonId(String personId) {
        this.personId = personId;
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
     * @return entryDate
     */
    public String getEntryDate() {
        return entryDate;
    }

    /**
     * 设置
     * @param entryDate
     */
    public void setEntryDate(String entryDate) {
        this.entryDate = entryDate;
    }

    public String toString() {
        return "Employ{employId = " + employId + ", name = " + name + ", username = " + username + ", password = " + password + ", phone = " + phone + ", personId = " + personId + ", stationId = " + stationId + ", address = " + address + ", entryDate = " + entryDate + "}";
    }
}
