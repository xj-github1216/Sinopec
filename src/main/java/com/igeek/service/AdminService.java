package com.igeek.service;

import com.igeek.dao.AdminDao;
import com.igeek.entity.Admin;
import com.igeek.utils.JDBCUtils;

import java.sql.SQLException;

public class AdminService {
    private AdminDao dao = new AdminDao();

    //登录
    public Admin login(String username,String password){
        try {
            Admin admin = dao.selectOne(username,password);
            return admin;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return null;
    }

    //插入
    public boolean insert(String name,String username,String password,String personId,String phone,String address,String email){
        try {
            int i = dao.insert(name,username, password,personId,phone,address,email);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }

    //修改基本信息
    public boolean update(String name,String personId,String phone,String address,String email){
        int i = 0;
        try {
            i = dao.updateAdmin(name,personId, phone, address, email);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }

    //修改密码
    public boolean updateAdminPassword(String username,String newPassword){
        int i = 0;
        try {
            i = dao.updatePassword(username, newPassword);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }

}
