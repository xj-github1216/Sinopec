package com.igeek.service;

import com.igeek.dao.RepairComDao;
import com.igeek.entity.RepairCom;
import com.igeek.utils.JDBCUtils;
import com.igeek.vo.PageVo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RepairComService {
    private RepairComDao dao = new RepairComDao();

    //查询所有
    public List<RepairCom> selectAllForAdd(){
        try {
            List<RepairCom> repairComList = dao.selectAllForAdd();
            return repairComList;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return null;
    }

    //插入
    public boolean insert(String address,Integer masterId,String masterName){
        try {
            int i = dao.insert(address, masterId, masterName);
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

    //查询所有站点
    public PageVo<RepairCom> selectAll(){
        PageVo<RepairCom> vo = null;
        try {

            //获得总员工
            List<RepairCom> repairComList = dao.selectAll(0);
            //获得总记录数
            int counts = dao.selectAllCount();
            //计算总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            //初始当前页码
            int pageNow = 1;

            //封装PageVo
            vo = new PageVo<>("address",null,pageNow,myPages,repairComList);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //根据地址模糊查询
    public PageVo<RepairCom> selectByLikeAddress(String style,String address,Integer pageNow){
        PageVo<RepairCom> vo = null;
        try {

            //获得总记录数
            int counts = dao.selectByLikeAddressCount(address);
            //计算总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));

            //计算出起始值
            int begin = (pageNow-1)*9;

            //查询数据
            List<RepairCom> list = dao.selectByLikeAddress(address, begin);

            //封装PageNow
            vo = new PageVo<>(style,address,pageNow,myPages,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //根据id查询
    public PageVo<RepairCom> selectById(String style,Integer id,Integer pageNow){
        PageVo<RepairCom> vo = null;
        try {
            RepairCom repairCom = dao.selectById(id, 0);
            List<RepairCom> list = new ArrayList<>();
            list.add(repairCom);

            vo = new PageVo<>(style,id+"",pageNow,1,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //修改信息
    public boolean updateRepairCom(String address,Integer masterId,String masterName,Integer id){
        try {
            int i = dao.updateRepairCom(address,masterName,id,masterId);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;

    }

}
