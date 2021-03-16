package com.igeek.service;

import com.igeek.dao.EmployDao;
import com.igeek.entity.Employ;
import com.igeek.utils.JDBCUtils;
import com.igeek.vo.PageVo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class EmployService {
    private EmployDao dao = new EmployDao();

    public List<Employ> selectAllForAdd(){
        try {
            return dao.selectAllForAdd();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

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
    public boolean insert(String name, String username, String password, String phone, String personId, Integer stationId, String address, String entryDate){
        try {
            int i = dao.insert(name,username, password,phone,personId, stationId,address,entryDate);
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

    //查询所有站点员工
    public PageVo<Employ> selectAll(){
        PageVo<Employ> vo = null;
        try {

            //获得总员工
            List<Employ> employList = dao.selectAll(0);
            //获得总记录数
            int counts = dao.selectAllEmployCount();
            //计算总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            //初始当前页码
            int pageNow = 1;

            //封装PageVo
            vo = new PageVo<>("name",null,pageNow,myPages,employList);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //根据name模糊查询
    public PageVo<Employ> selectByLikeName(String style,String name,Integer pageNow){
        PageVo<Employ> vo = null;
        try {

            //获得总记录数
            int counts = dao.selectByLikeNameCount(name);
            //计算总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));

            //计算出起始值
            int begin = (pageNow-1)*9;

            //查询数据
            List<Employ> list = dao.selectByLikeName(name, begin);

            //封装PageNow
            vo = new PageVo<>(style,name,pageNow,myPages,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //根据id查询
    public PageVo<Employ> selectById(String style,Integer id,Integer pageNow){
        PageVo<Employ> vo = null;
        try {
            Employ employ = dao.selectById(id,0);
            List<Employ> list = new ArrayList<>();
            list.add(employ);

            vo = new PageVo<>(style,id+"",pageNow,1,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //根据username模糊查询
    public PageVo<Employ> selectByLikeUsername(String style,String username,Integer pageNow){
        PageVo<Employ> vo = null;
        try {

            //获取总记录数
            int counts = dao.selectByLikeUsernameCount(username);
            //计算总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            //计算起始值
            int begin = (pageNow-1)*9;
            //获取当前页记录
            List<Employ> list = dao.selectByLikeUsername(username, begin);
            //封装PageVo
            vo = new PageVo<>(style,username,pageNow,myPages,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //修改信息
    public boolean updateEmploy(String username,String phone,Integer stationId,String address,Integer id){
        try {
            int i = dao.updateEmploy(username, phone, address, stationId, id);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;

    }

    //修改密码
    public boolean updateEmployPassword(String newPassword,Integer id){
        try {
            int i = dao.updatePassword(newPassword, id);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;

    }

}
