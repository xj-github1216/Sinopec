package com.igeek.dao;

import com.igeek.entity.Admin;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;

public class AdminDao extends BaseDao<Admin>{

    //查询
    public Admin selectOne(String name,String password) throws SQLException {
        Admin admin = this.getBean("select * from admin where name=? and password=?",
                Admin.class,name,password);
        return admin;
    }

    //插入
    public int insert(String name,String password) throws SQLException {
        int i = this.update("insert into admin values(?,?)", name, password);
        return i;
    }

}
