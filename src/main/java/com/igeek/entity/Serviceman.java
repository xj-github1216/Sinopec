package com.igeek.entity;

public class Serviceman {
    private Integer servicemanId;
    private String name;
    private String username;
    private String password;
    private String personId;
    private String phone;
    private Integer repair_id;
    private String address;
    private String entryDate;

    public Serviceman() {
    }

    public Serviceman(Integer servicemanId, String name, String username, String password, String personId, String phone, Integer repair_id, String address, String entryDate) {
        this.servicemanId = servicemanId;
        this.name = name;
        this.username = username;
        this.password = password;
        this.personId = personId;
        this.phone = phone;
        this.repair_id = repair_id;
        this.address = address;
        this.entryDate = entryDate;
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
     * @return repair_id
     */
    public Integer getRepair_id() {
        return repair_id;
    }

    /**
     * 设置
     * @param repair_id
     */
    public void setRepair_id(Integer repair_id) {
        this.repair_id = repair_id;
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
        return "Serviceman{servicemanId = " + servicemanId + ", name = " + name + ", username = " + username + ", password = " + password + ", personId = " + personId + ", phone = " + phone + ", repair_id = " + repair_id + ", address = " + address + ", entryDate = " + entryDate + "}";
    }
}
