package com.igeek.dao;

import com.igeek.entity.Fault;

import java.sql.SQLException;
import java.util.List;

public class FaultDao extends BaseDao<Fault>{
    //查询
    public Fault selectOne(String faultStyle) throws SQLException {
        Fault fault = this.getBean("select * from fault where faultStyle=?", Fault.class,faultStyle);
        return fault;
    }

    //插入
    public int insert(String faultStyle,String faultContent) throws SQLException {
        int i = this.update("insert into fault values(?,?,?)",null,faultStyle,faultContent);
        return i;
    }

    //删除
    public int delete(Integer id) throws SQLException {
        int i = this.update("delete from fault where id=?", id);
        return i;
    }

    //查询所有
    public List<Fault> selectAll(Integer begin) throws SQLException {
        List<Fault> faultList = this.getBeanList("select * from fault limit ?,9", Fault.class,begin);
        return faultList;
    }
    //查询所有的总数
    public int selectAllCount() throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from fault");
        return o.intValue();
    }

    //根据id查询
    public Fault selectById(Integer id,Integer begin) throws SQLException {
        Fault fault = this.getBean("select * from fault where id = ? limit ?,9", Fault.class, id,begin);
        return fault;
    }

    //根据故障类型模糊查询
    public List<Fault> selectByLikeFaultStyle(String faultStyle,Integer begin) throws SQLException {
        List<Fault> faultList = this.getBeanList("select * from fault where faultStyle like concat('%',?,'%') limit ?,9", Fault.class, faultStyle,begin);
        return faultList;
    }

    //根据故障类型模糊查询总数
    public int selectByLikeFaultStyleCount(String faultStyle) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from fault where faultStyle like concat('%',?,'%')", faultStyle);
        return o.intValue();
    }

    //修改信息
    public int updateFault(String faultStyle,String faultContent,Integer id) throws SQLException {
        int i = this.update("update fault set faultStyle=?,faultContent=? where id=?"
                , faultStyle, faultContent, id);
        return i;
    }


}
