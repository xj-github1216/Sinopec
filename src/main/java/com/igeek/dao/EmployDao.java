package com.igeek.dao;

import com.igeek.entity.Employ;

import java.sql.SQLException;

public class EmployDao extends BaseDao<Employ> {

    //查询
    public Employ selectOne(String name,String password) throws SQLException {
        Employ employ = this.getBean("select * from employ where name=? and password=?", Employ.class, name, password);
        return employ;
    }

    //插入
    public int insert(Integer id,String name,String password,Integer station_id,String phone) throws SQLException {
        int i = this.update("insert into employ values(?,?,?,?,?)",id, name, password,station_id,phone);
        return i;
    }

    //删除
    public int delete(Integer id) throws SQLException {
        int i = this.update("delete from employ where id=?", id);
        return i;
    }

}
