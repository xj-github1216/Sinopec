package com.igeek.dao;

import com.igeek.entity.Repair;
import com.igeek.entity.RepairDetail;

import java.sql.SQLException;
import java.util.List;

public class RepairDao extends BaseDao<Repair> {
    //删除（管理员，站点，站点只能删除未处理的）
    public int delete(Integer id) throws SQLException {
        int i = this.update("delete from repair where id = ?", id);
        return i;
    }

    //插入（站点人员）
    public int insert(String faultStyle,String faultDescribe,Integer employId,String repairDate) throws SQLException {
        int i = this.update("insert into repair values(?,?,?,?,?,?,?)",
                null, faultStyle, faultDescribe, employId, "未处理", null, repairDate);
        return i;
    }

    //只修改state和servicemanId，通过id修改（运维人员）
    public int updateStateById(String state,Integer servicemanId,Integer id) throws SQLException {
        int i = this.update("update repair set state=?,servicemanId=? where id=?",
                state, servicemanId, id);
        return i;
    }

    //只修改faultStyle,faultDescribe,通过id修改（站点人员）
    public  int updateFault(String faultStyle,String faultDescribe,Integer id) throws SQLException {
        int i = this.update("update repair set faultStyle=?,faultDescribe=? where id = ?",
                faultStyle, faultDescribe, id);
        return i;
    }



    //查询该站点所有未处理的故障报修(站点人员故障报修申请列表界面)
    public List<Repair> selectState0ByEmployId(Integer employId,Integer begin) throws SQLException {
        List<Repair> list = this.getBeanList("select * from repair where state like '未处理' and employId=? limit ?,9 ",
                Repair.class, employId, begin);
        return list;
    }
    //查询该站点所有未处理的故障报修总数
    public int selectState0ByEmployIdCount(Integer employId) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from repair where state like '未处理' and employId=? ", employId);
        return o.intValue();
    }


    //通过故障类型模糊查询该站点所有未处理的故障报修
    public List<Repair> selectState0ByEmployIdByFaultStyle(Integer employId,String faultStyle,Integer begin) throws SQLException {
        List<Repair> list = this.getBeanList("select * from repair where employId=? and state like '未处理' and faultStyle like concat('%',?,'%') limit ?,9"
                , Repair.class, employId, faultStyle, begin);
        return list;
    }
    //通过故障类型模糊查询该站点所有未处理的故障报修总数
    public int selectState0ByEmployIdByFaultStyleCount(Integer employId,String faultStyle) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from repair where employId=? and state like '未处理' and faultStyle like concat('%',?,'%')"
                , employId, faultStyle);
        return o.intValue();
    }


    //通过故障报修的id查询该站点所有未处理的故障报修
    public Repair selectState0ByEmployIdById(Integer employId,Integer id,Integer begin) throws SQLException {
        Repair bean = this.getBean("select * from repair where employId=? and state like '未处理' and id=? limit ?,9",
                Repair.class, employId, id, begin);
        return bean;
    }


    //查询所有未处理的故障报修(运维人员)
    public List<Repair> selectAllState0(Integer begin) throws SQLException {
        List<Repair> list = this.getBeanList("select * from repair where state like '未处理' limit ?,9",
                Repair.class, begin);
        return list;
    }
    //查询所有未处理的故障报修总数(运维人员)
    public int selectAllState0Count() throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from repair where state like '未处理'");
        return o.intValue();
    }


    //通过故障类型查询所有未处理的故障报修(运维人员)
    public List<Repair> selectAllState0ByFaultStyle(String faultStyle,Integer begin) throws SQLException {
        List<Repair> list = this.getBeanList("select * from repair where state like '未处理' and faultStyle like concat('%',?,'%') limit ?,9",
                Repair.class, faultStyle, begin);
        return list;
    }
    //通过故障类型查询所有未处理的故障报修总数(运维人员)
    public int selectAllState0ByFaultStyleCount(String faultStyle) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from repair where state like '未处理' and faultStyle like concat('%',?,'%')", faultStyle);
        return o.intValue();
    }



    //通过id查询所有未处理的故障报修(运维人员)
    public Repair selectState0ById(Integer id,Integer begin) throws SQLException {
        Repair repair = this.getBean("select * from repair where state like '未处理' and id=? limit ?,9",
                Repair.class, id, begin);
        return repair;
    }


    //查询所有处理中的故障报修(管理员条件搜索)
    public List<Repair> selectAllState1(Integer begin) throws SQLException {
        List<Repair> list = this.getBeanList("select * from repair where state like '处理中' limit ?,9",
                Repair.class);
        return list;
    }
    //查询所有处理中的故障报修总数(管理员)
    public int selectAllState1Count() throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from repair where state like '处理中'");
        return o.intValue();
    }



    //通过servicemanId查询正在处理中的故障报修(运维人员订单查询)
    public List<Repair> selectAllState1ByServicemanId(Integer servicemanId,Integer begin) throws SQLException {
        List<Repair> list = this.getBeanList("select * from repair where state like '处理中' and servicemanId=? limit ?,9",
                Repair.class,servicemanId, begin);
        return list;
    }
    //通过servicemanId查询正在处理中的故障报修总数
    public int selectAllState1ByServicemanIdCount(Integer servicemanId) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from repair where state like '处理中' and servicemanId=? ",servicemanId);
        return o.intValue();
    }


    //通过servicemanId和故障类型查询所有正在处理中的故障报修(运维人员)
    public List<Repair> selectAllState1ByServicemanIdAndFaultStyle(Integer servicemanId,String faultStyle,Integer begin) throws SQLException {
        List<Repair> list = this.getBeanList("select * from repair where state like '处理中' and ServicemanId=? and faultStyle like concat('%',?,'%') limit ?,9",
                Repair.class, servicemanId, faultStyle, begin);
        return list;
    }
    //通过servicemanId和故障类型查询所有正在处理中的故障报修总数(运维人员)
    public int selectAllState1ByServicemanIdAndFaultStyleCount(Integer servicemanId,String faultStyle) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from repair where state like '处理中' and ServicemanId=? and faultStyle like concat('%',?,'%')", servicemanId, faultStyle);
        return o.intValue();
    }


    //通过id和servicemanId查询所有正在处理中的故障报修(运维人员)
    public Repair selectState1ByServicemanIdAndId(Integer id ,Integer servicemanId, Integer begin) throws SQLException {
        Repair bean = this.getBean("select * from repair where state like '处理中' and servicemanId=? and id=? limit ?,9",
                Repair.class, servicemanId, id, begin);
        return bean;
    }


    //通过servicemanId查询所有已处理故障报修(运维人员)
    public List<Repair> selectState2ByServicemanId(Integer servicemanId,Integer begin) throws SQLException {
        List<Repair> list = this.getBeanList("select * from repair where state like '已处理' and servicemanId=? limit ?,9",
                Repair.class, servicemanId, begin);
        return list;
    }
    //通过servicemanId查询所有已处理故障报修总数(运维人员)
    public int selectState2ByServicemanIdCount(Integer servicemanId) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from repair where state like '已处理' and servicemanId=?",
                Repair.class, servicemanId);
        return o.intValue();
    }


}
