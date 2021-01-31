package com.igeek.service;

import com.igeek.dao.EmployDao;
import com.igeek.entity.Employ;
import com.igeek.utils.JDBCUtils;

import java.sql.SQLException;

public class EmployService {
    private EmployDao dao = new EmployDao();

    //登录
    public Employ login(String name,String password){
        try {
            Employ employ = dao.selectOne(name, password);
            return employ;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return null;
    }

    //插入
    public boolean insert(Integer id,String name,String password,Integer station_id,String phone){
        try {
            int i = dao.insert(id, name, password, station_id,phone);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }

    //删除
    public boolean delete(Integer id){
        try {
            int i = dao.delete(id);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }

}
