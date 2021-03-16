package com.igeek.dao;


import com.igeek.entity.Station;

import java.sql.SQLException;
import java.util.List;

public class StationDao extends BaseDao<Station> {

    //站点人员注册，查询所有站点公司
    public List<Station> selectAllForAdd() throws SQLException {
        List<Station> list = this.getBeanList("select * from station", Station.class);
        return list;
    }

    //修改信息
    public int updateStation(String address,String masterName,Integer id,Integer masterId) throws SQLException {
        int i = this.update("update station set address=?,masterId=?,masterName=? where stationId=?"
                , address, masterId, masterName,id);
        return i;
    }


    //插入
    public int insert(String address,Integer masterId,String masterName) throws SQLException {
        int i = this.update("insert into station values(?,?,?,?)",null,address,masterId,masterName);
        return i;
    }

    //删除
    public int delete(Integer id) throws SQLException {
        int i = this.update("delete from station where stationId=?", id);
        return i;
    }

    //查询所有
    public List<Station> selectAll(Integer begin) throws SQLException {
        List<Station> stationList = this.getBeanList("select * from station limit ?,9", Station.class,begin);

        return stationList;
    }
    //查询所有的总数
    public int selectAllCount() throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from station");
        return o.intValue();
    }

    //根据id查询
    public Station selectById(Integer id,Integer begin) throws SQLException {
        Station station = this.getBean("select * from station where stationId = ? limit ?,9", Station.class, id,begin);
        return station;
    }

    //根据地址模糊查询
    public List<Station> selectByLikeAddress(String address,Integer begin) throws SQLException {
        List<Station> stationList = this.getBeanList("select * from station where address like concat('%',?,'%') limit ?,9", Station.class, address,begin);
        return stationList;
    }

    //根据故障类型模糊查询总数
    public int selectByLikeAddressCount(String address) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from station where address like concat('%',?,'%')", address);
        return o.intValue();
    }

}
