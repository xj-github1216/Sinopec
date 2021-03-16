package com.igeek.dao;

import com.igeek.entity.RepairCom;

import java.sql.SQLException;
import java.util.List;

public class RepairComDao extends BaseDao<RepairCom> {

    //运维人员注册，查询所有运维公司
    public List<RepairCom> selectAllForAdd() throws SQLException {
        List<RepairCom> list = this.getBeanList("select * from repaircom", RepairCom.class);
        return list;
    }

    //插入
    public int insert(String address,Integer masterId,String masterName) throws SQLException {
        int i = this.update("insert into repaircom values(?,?,?,?)",null,address,masterId,masterName);
        return i;
    }

    //删除
    public int delete(Integer id) throws SQLException {
        int i = this.update("delete from repaircom where repairComId=?", id);
        return i;
    }

    //查询所有
    public List<RepairCom> selectAll(Integer begin) throws SQLException {
        List<RepairCom> repairComList = this.getBeanList("select * from repaircom limit ?,9", RepairCom.class,begin);
        return repairComList;
    }
    //查询所有的总数
    public int selectAllCount() throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from repaircom");
        return o.intValue();
    }

    //根据id查询
    public RepairCom selectById(Integer id,Integer begin) throws SQLException {
        RepairCom repairCom = this.getBean("select * from repaircom where repairComId = ? limit ?,9", RepairCom.class, id,begin);
        return repairCom;
    }

    //根据地址模糊查询
    public List<RepairCom> selectByLikeAddress(String address,Integer begin) throws SQLException {
        List<RepairCom> repairComList = this.getBeanList("select * from repaircom where address like concat('%',?,'%') limit ?,9", RepairCom.class, address,begin);
        return repairComList;
    }

    //根据故障类型模糊查询总数
    public int selectByLikeAddressCount(String address) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from repaircom where address like concat('%',?,'%')", address);
        return o.intValue();
    }

    //修改信息
    public int updateRepairCom(String address,String masterName,Integer id,Integer masterId) throws SQLException {
        int i = this.update("update station set address=?,masterId=?,masterName=? where repairComId=?"
                , address, masterId, masterName,id);
        return i;
    }

}
