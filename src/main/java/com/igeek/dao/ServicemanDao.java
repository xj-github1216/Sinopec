package com.igeek.dao;

import com.igeek.entity.Serviceman;

import java.sql.SQLException;

public class ServicemanDao extends BaseDao<Serviceman> {

    //查询
    public Serviceman selectOne(String name,String password) throws SQLException {
        Serviceman employ = this.getBean("select * from serviceman where name=? and password=?", Serviceman.class, name, password);
        return employ;
    }

    //插入
    public int insert(Integer id,String name,String password,Integer repair_id,String phone) throws SQLException {
        int i = this.update("insert into serviceman values(?,?,?,?,?)",id, name, password,repair_id,phone);
        return i;
    }

    //删除
    public int delete(Integer id) throws SQLException {
        int i = this.update("delete from serviceman where id=?", id);
        return i;
    }

}
