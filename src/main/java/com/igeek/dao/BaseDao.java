package com.igeek.dao;

import com.igeek.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class BaseDao<T> {
    private QueryRunner runner = new QueryRunner();

    //增删改
    public int update(String sql,Object...params) throws SQLException {
        int i = runner.update(JDBCUtils.getConn(), sql, params);
        return i;
    }

    //查询单个对象
    public T getBean(String sql,Class<T> clazz,Object...params) throws SQLException {
        T t = runner.query(JDBCUtils.getConn(), sql, new BeanHandler<>(clazz), params);
        return t;
    }

    //查询多个对象
    public List<T> getBeanList(String sql,Class<T> clazz,Object...params) throws SQLException {
        List<T> list = runner.query(JDBCUtils.getConn(), sql, new BeanListHandler<>(clazz), params);
        return list;
    }

    //查询单个值
    public Object getSingleValue(String sql,Object...params) throws SQLException {
        Object o = runner.query(JDBCUtils.getConn(), sql, new ScalarHandler<>(), params);
        return o;
    }

}
