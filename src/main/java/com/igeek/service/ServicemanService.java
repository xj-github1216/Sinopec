package com.igeek.service;

import com.igeek.dao.ServicemanDao;
import com.igeek.entity.Serviceman;
import com.igeek.utils.JDBCUtils;
import com.igeek.vo.PageVo;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServicemanService {
    private ServicemanDao dao = new ServicemanDao();

    public List<Serviceman> selectAllForAdd(){
        try {
            return dao.selectAllForAdd();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

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
    public boolean insert(String name, String username, String password, String personId, String phone, Integer repair_id, String address, String entryDate){
        try {
            int i = dao.insert(name,username, password,personId,phone, repair_id,address,entryDate);
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

    //查询所有运维人员
    public PageVo<Serviceman> selectAll(){
        PageVo<Serviceman> vo = null;
        try {
            List<Serviceman> list = dao.selectAll(0);
            //获取总记录数
            int counts = dao.selectAllServicemanCount();
            //获取总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            //当前页
            int pageNow = 1;
            vo = new PageVo<>("name",null,pageNow,myPages,list);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //根据name模糊查询
    public PageVo<Serviceman> selectByLikeName(String style,String name, Integer pageNow){
        PageVo<Serviceman> vo = null;
        try {

            //获取总记录数
            int counts = dao.selectByLikeNameCount(name);
            //获取总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            //计算起始值
            int begin = (pageNow-1)*9;
            //获取当前页记录
            List<Serviceman> list = dao.selectByLikeName(name, begin);
            //封装PageVo
            vo = new PageVo<>(style,name,pageNow,myPages,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //根据id查询
    public PageVo<Serviceman> selectById(String style,Integer id,Integer pageNow){
        PageVo<Serviceman> vo = null;
        try {

            //获取总页数
            int myPages = 1;
            //获取记录
            Serviceman serviceman = dao.selectById(id);
            List<Serviceman> list = new ArrayList<>();
            list.add(serviceman);
            //封装PageVo
            vo = new PageVo<>(style,id+"",pageNow,myPages,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //根据username模糊查询
    public PageVo<Serviceman> selectByLikeUsername(String style,String username,Integer pageNow){
        PageVo<Serviceman> vo = null;
        try {

            int counts = dao.selectByLikeUsernameCount(username);
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            int begin = (pageNow-1)*10;
            List<Serviceman> list = dao.selectByLikeUsername(username, begin);
            vo = new PageVo<>(style,username,pageNow,myPages,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //修改信息
    public boolean updateServiceman(String username,String phone,Integer repair_id,String address,Integer id){
        try {
            int i = dao.updateServiceman(username, phone, address, repair_id, id);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;

    }

    //修改密码
    public boolean updateServicemanPassword(String newPassword,Integer id){
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
