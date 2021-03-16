package com.igeek.service;

import com.igeek.dao.RepairDao;
import com.igeek.dao.RepairDetailDao;
import com.igeek.entity.Repair;
import com.igeek.entity.RepairDetail;
import com.igeek.utils.JDBCUtils;
import com.igeek.vo.PageVo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RepairService {
    private RepairDao dao = new RepairDao();



    //查询该站点所有未处理的故障报修(站点人员故障报修申请列表界面)
    public PageVo<Repair> selectState0ByEmployId(Integer employId){
        PageVo<Repair> vo = null;
        try {
            //获得总记录
            List<Repair> repairs = dao.selectState0ByEmployId(employId, 0);
            //获得总记录数
            int counts = dao.selectState0ByEmployIdCount(employId);
            //计算总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            //当前页
            int pageNow = 1;

            vo = new PageVo<>("faultStyle",null,pageNow,myPages,repairs);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }

        return vo;
    }

    //插入新的故障报修申请
    public boolean insertRepair(String faultStyle,String faultDescribe,Integer employId,String repairDate){
        try {
            int i = dao.insert(faultStyle, faultDescribe, employId, repairDate);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }


    //通过故障类型模糊查询该站点所有未处理的故障报修
    public PageVo<Repair> selectState0ByEmployIdByFaultStyle(String style,String faultStyle,Integer employId,Integer pageNow){
        PageVo<Repair> vo = null;
        try {
            //获得总记录数
            int counts = dao.selectState0ByEmployIdByFaultStyleCount(employId, faultStyle);
            //获得总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            //计算出起始值
            int begin = (pageNow-1)*9;
            //获得总记录
            List<Repair> repairList = dao.selectState0ByEmployIdByFaultStyle(employId, faultStyle, begin);

            vo = new PageVo<>(style,faultStyle,pageNow,myPages,repairList);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }


    //通过故障报修的id查询该站点所有未处理的故障报修
    public PageVo<Repair> selectState0ByEmployIdById(String style,Integer id,Integer employId,Integer pageNow){
        PageVo<Repair> vo = null;
        try {
            Repair repair = dao.selectState0ByEmployIdById(employId, id, 0);
            List<Repair> list = new ArrayList<>();
            list.add(repair);

            vo = new PageVo<>(style,id+"",pageNow,1,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;

    }


    //通过id删除
    public boolean deleteById(Integer id){
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


    //通过id修改故障类型，故障描述（站点人员修改）
    public boolean updateByEmploy(String faultStyle,String faultDescribe,Integer id){
        try {
            int i = dao.updateFault(faultStyle, faultDescribe, id);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }

    //通过id修改处理状态、运维人员id
    public boolean updateByIdForState(String state,Integer servicemanId,Integer id){
        try {
            int i = dao.updateStateById(state, servicemanId, id);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }


    //查询所有未处理的故障报修(运维人员)
    public PageVo<Repair> selectAllState0(){
        PageVo<Repair> vo = null;
        try {

            List<Repair> repairList = dao.selectAllState0(0);
            //总数
            int counts = dao.selectAllState0Count();
            //总页数
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            //当前页
            int pageNow = 1;
            vo = new PageVo<>("faultStyle",null,pageNow,myPages,repairList);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }


    //通过故障类型查询所有未处理的故障报修(运维人员)
    public PageVo<Repair> selectState0ByFaultStyle(String style,String faultStyle,Integer pageNow){
        PageVo<Repair> vo = null;
        try {
            int counts = dao.selectAllState0ByFaultStyleCount(faultStyle);
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            int begin = (pageNow-1)*9;
            List<Repair> repairList = dao.selectAllState0ByFaultStyle(faultStyle, begin);
            vo = new PageVo<>(style,faultStyle,pageNow,myPages,repairList);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }


    //通过故障报修的id查询所有未处理的故障报修(运维人员)
    public PageVo<Repair> selectState0ById(String style,Integer id,Integer pageNow){
        PageVo<Repair> vo = null;
        try {
            Repair repair = dao.selectState0ById(id,0);
            List<Repair> list = new ArrayList<>();
            list.add(repair);

            vo = new PageVo<>(style,id+"",pageNow,1,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;

    }



    //通过故障报修id进行三表联查（运维人员接单详情页面）
    public List<RepairDetail> selectState0ByRepairIdForThreeTable(){
        RepairDetailDao rdd = new RepairDetailDao();
        List<RepairDetail> list = null;
        try {
            list = rdd.selectAllByIdForThreeTable();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return list;
    }


    //查询所有处理中的故障报修
    public PageVo<Repair> selectAllState1(){
        PageVo<Repair> vo = null;
        try {

            int counts = dao.selectAllState1Count();
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            int pageNow = 1;
            List<Repair> list = dao.selectAllState1(0);
            vo = new PageVo<>("faultStyle",null,pageNow,myPages,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }



    //通过servicemanId查询所有处理中的故障报修
    public PageVo<Repair> selectAllState1ByServicemanId(Integer servicemanId){
        PageVo<Repair> vo = null;
        try {

            int counts = dao.selectAllState1ByServicemanIdCount(servicemanId);
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            int pageNow = 1;
            List<Repair> list = dao.selectAllState1ByServicemanId(servicemanId,0);
            vo = new PageVo<>("faultStyle",null,pageNow,myPages,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }


    //通过servicemanId和故障类型查询所有正在处理中的故障报修(运维人员)
    public PageVo<Repair> selectAllState1ByServicemanIdAndFaultStyle(String style,Integer servicemanId,String faultStyle,Integer pageNow){
        PageVo<Repair> vo = null;
        try {

            int counts = dao.selectAllState1ByServicemanIdAndFaultStyleCount(servicemanId,faultStyle);
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            int begin = (pageNow-1)*9;
            List<Repair> list = dao.selectAllState1ByServicemanIdAndFaultStyle(servicemanId,faultStyle,begin);
            vo = new PageVo<>(style,faultStyle,pageNow,myPages,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }


    //通过id和servicemanId查询所有正在处理中的故障报修(运维人员)
    public PageVo<Repair> selectState1ByServicemanIdAndId(String style,Integer id,Integer servicemanId,Integer pageNow){
        PageVo<Repair> vo = null;
        try {

            Repair repair = dao.selectState1ByServicemanIdAndId(id, servicemanId, 0);
            List<Repair> list = new ArrayList<>();
            list.add(repair);
            vo = new PageVo<>(style,id+"",pageNow,1,list);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }


}
