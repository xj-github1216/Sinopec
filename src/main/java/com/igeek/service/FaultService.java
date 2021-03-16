package com.igeek.service;

import com.igeek.dao.FaultDao;
import com.igeek.entity.Fault;
import com.igeek.utils.JDBCUtils;
import com.igeek.vo.PageVo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FaultService {
    private FaultDao dao = new FaultDao();

    //查询
    public Fault select(String faultStyle){
        try {
            Fault fault = dao.selectOne(faultStyle);
            return fault;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return null;
    }

    //插入
    public boolean insert(String faultStyle,String faultContent){
        try {
            int i = dao.insert(faultStyle, faultContent);
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

    //查询所有故障分类
    public PageVo<Fault> selectAll(){
        PageVo<Fault> vo = null;
        try {

            //获得总员工
            List<Fault> faultList = dao.selectAll(0);
            //获得总记录数
            int counts = dao.selectAllCount();
            //计算总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            //初始当前页码
            int pageNow = 1;

            //封装PageVo
            vo = new PageVo<>("faultStyle",null,pageNow,myPages,faultList);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //根据故障类型模糊查询
    public PageVo<Fault> selectByLikeFaultStyle(String style,String faultStyle,Integer pageNow){
        PageVo<Fault> vo = null;
        try {

            //获得总记录数
            int counts = dao.selectByLikeFaultStyleCount(faultStyle);
            //计算总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));

            //计算出起始值
            int begin = (pageNow-1)*9;

            //查询数据
            List<Fault> list = dao.selectByLikeFaultStyle(faultStyle, begin);

            //封装PageNow
            vo = new PageVo<>(style,faultStyle,pageNow,myPages,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //根据id查询
    public PageVo<Fault> selectById(String style,Integer id,Integer pageNow){
        PageVo<Fault> vo = null;
        try {
            Fault fault = dao.selectById(id,0);
            List<Fault> list = new ArrayList<>();
            list.add(fault);

            vo = new PageVo<>(style,id+"",pageNow,1,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //修改信息
    public boolean updateFault(String faultStyle,String faultContent,Integer id){
        try {
            int i = dao.updateFault(faultStyle, faultContent, id);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }

}
