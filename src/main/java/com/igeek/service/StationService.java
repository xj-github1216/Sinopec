package com.igeek.service;

import com.igeek.dao.StationDao;
import com.igeek.entity.Station;
import com.igeek.utils.JDBCUtils;
import com.igeek.vo.PageVo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StationService {
    private StationDao dao = new StationDao();

    //查询所有
    public List<Station> selectAllForAdd(){
        try {
            List<Station> stationList = dao.selectAllForAdd();
            return stationList;
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
    public PageVo<Station> selectAll(){
        PageVo<Station> vo = null;
        try {

            //获得总员工
            List<Station> stationList = dao.selectAll(0);
            //获得总记录数
            int counts = dao.selectAllCount();
            //计算总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            //初始当前页码
            int pageNow = 1;

            //封装PageVo
            vo = new PageVo<>("address",null,pageNow,myPages,stationList);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //根据地址模糊查询
    public PageVo<Station> selectByLikeAddress(String style,String address,Integer pageNow){
        PageVo<Station> vo = null;
        try {

            //获得总记录数
            int counts = dao.selectByLikeAddressCount(address);
            //计算总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));

            //计算出起始值
            int begin = (pageNow-1)*9;

            //查询数据
            List<Station> list = dao.selectByLikeAddress(address, begin);

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
    public PageVo<Station> selectById(String style,Integer id,Integer pageNow){
        PageVo<Station> vo = null;
        try {
            Station station = dao.selectById(id, 0);
            List<Station> list = new ArrayList<>();
            list.add(station);

            vo = new PageVo<>(style,id+"",pageNow,1,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //修改信息
    public boolean updateStation(String address,Integer masterId,String masterName,Integer id){
        try {
            int i = dao.updateStation(address,masterName,id,masterId);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;

    }

}
