package com.igeek.service;

import com.igeek.dao.AdminDao;
import com.igeek.entity.Admin;
import com.igeek.utils.JDBCUtils;

import java.sql.SQLException;

public class AdminService {
    private AdminDao dao = new AdminDao();

    //登录
    public Admin login(String name,String password){
        try {
            Admin admin = dao.selectOne(name,password);
            return admin;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return null;
    }

    //插入
    public boolean insert(String name,String password){
        try {
            int i = dao.insert(name, password);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }
}
