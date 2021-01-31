package com.igeek.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class JDBCUtils {

    //创建数据源（数据库连接池）
    private static ComboPooledDataSource pool = new ComboPooledDataSource("mysql");

    //线程变量
    private static ThreadLocal<Connection> tl = new ThreadLocal<>();

    //获得连接对象
    public static Connection getConn(){
        Connection conn = tl.get();
        try {
            if (conn==null || conn.isClosed()){
                conn = pool.getConnection();
                tl.set(conn);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    //释放连接
    public static void closeConn(){
        Connection conn = tl.get();
        if (conn!=null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
