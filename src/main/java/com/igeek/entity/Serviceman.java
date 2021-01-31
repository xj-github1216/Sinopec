package com.igeek.entity;

public class Serviceman {
    private Integer id;
    private String name;
    private String password;
    private Integer repair_id;
    private String phone;

    public Serviceman() {
    }

    public Serviceman(Integer id, String name, String password, Integer repair_id, String phone) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.repair_id = repair_id;
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
        return "Serviceman{id = " + id + ", name = " + name + ", password = " + password + ", repair_id = " + repair_id + ", phone = " + phone + "}";
    }
}
