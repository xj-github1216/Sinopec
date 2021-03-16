package com.igeek.dao;

import com.igeek.entity.Admin;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;

public class AdminDao extends BaseDao<Admin>{

    //查询
    public Admin selectOne(String name,String password) throws SQLException {
        Admin admin = this.getBean("select * from admin where username=? and password=?",
                Admin.class,name,password);
        return admin;
    }

    //插入
    public int insert(String name,String username,String password,String personId,String phone,String address,String email) throws SQLException {
        int i = this.update("insert into admin values(?,?,?,?,?,?,?)", name,username, password,personId,phone,address,email);
        return i;
    }

    //修改基本信息
    public int updateAdmin(String name,String personId,String phone,String address,String email) throws SQLException {
        int i = this.update("update admin set personId=?,phone=?,address=?,email=? where name=?"
                , personId, phone, address, email, name);
        return i;
    }

    //修改密码
    public int updatePassword(String username,String newPassword) throws SQLException {
        int i = this.update("update admin set password = ? where username=?",newPassword,username);
        return i;
    }

}
