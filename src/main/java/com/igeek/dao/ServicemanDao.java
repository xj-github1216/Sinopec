package com.igeek.dao;

import com.igeek.entity.Serviceman;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

public class ServicemanDao extends BaseDao<Serviceman> {

    public List<Serviceman> selectAllForAdd() throws SQLException {
        List<Serviceman> list = this.getBeanList("select * from serviceman", Serviceman.class);
        return list;
    }

    //查询单个
    public Serviceman selectOne(String name,String password) throws SQLException {
        Serviceman employ = this.getBean("select * from serviceman where username=? and password=?", Serviceman.class, name, password);
        return employ;
    }

    //插入
    public int insert(String name, String username, String password, String personId, String phone, Integer repair_id, String address, String entryDate) throws SQLException {
        int i = this.update("insert into serviceman values(?,?,?,?,?,?,?,?,?)",
                null, name,username, password,personId,phone,repair_id,address,entryDate);
        return i;
    }

    //删除
    public int delete(Integer id) throws SQLException {
        int i = this.update("delete from serviceman where servicemanId=?", id);
        return i;
    }

    //查询所有运维人员
    public List<Serviceman> selectAll(Integer begin) throws SQLException {
        List<Serviceman> servicemanList = this.getBeanList("select * from serviceman limit ?,9", Serviceman.class,begin);
        return servicemanList;
    }
    //查询所有运维人员总数
    public int selectAllServicemanCount() throws SQLException {
        Long o = (Long) this.getSingleValue("select count(*) from serviceman");
        return o.intValue();
    }

    //根据name模糊查询
    public List<Serviceman> selectByLikeName(String name,Integer begin) throws SQLException {
        List<Serviceman> servicemanByNameList = this.getBeanList("select * from serviceman where name like concat('%',?,'%') limit ?,9", Serviceman.class, name,begin);
        return servicemanByNameList;
    }
    //根据name模糊查询总数
    public int selectByLikeNameCount(String name) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from serviceman where name like concat('%',?,'%')", name);
        return o.intValue();
    }

    //根据id查询
    public Serviceman selectById(Integer id) throws SQLException {
        Serviceman serviceman = this.getBean("select * from serviceman where servicemanId = ?", Serviceman.class, id);
        return serviceman;
    }

    //根据username模糊查询
    public List<Serviceman> selectByLikeUsername(String username,Integer begin) throws SQLException {
        List<Serviceman> beanList = this.getBeanList("select * from serviceman where username like concat('%',?,'%') limit ?,9", Serviceman.class, username,begin);
        return beanList;
    }
    //根据username模糊查询总数
    public int selectByLikeUsernameCount(String username) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from serviceman where username like concat('%',?,'%')", username);
        return o.intValue();
    }

    //修改信息
    public int updateServiceman(String username,String phone,String address,Integer repair_id,Integer id) throws SQLException {
        int i = this.update("update serviceman set username=?,phone=?,address=?,repair_id=? where servicemanId = ?"
                , username, phone, address, repair_id, id);
        return i;
    }

    //修改密码
    public int updatePassword(String password,Integer id) throws SQLException {
        int i = this.update("update serviceman set password = ? where servicemanId = ?", password, id);
        return i;
    }

}
