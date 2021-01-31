package com.igeek.service;

import com.igeek.dao.ServicemanDao;
import com.igeek.entity.Serviceman;
import com.igeek.utils.JDBCUtils;

import java.sql.SQLException;

public class ServicemanService {
    private ServicemanDao dao = new ServicemanDao();

    //登录
    public Serviceman login(String name,String password){
        try {
            Serviceman serviceman = dao.selectOne(name, password);
            return serviceman;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return null;
    }

    //插入
    public boolean insert(Integer id,String name,String password,Integer repair_id,String phone){
        try {
            int i = dao.insert(id, name, password, repair_id,phone);
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
