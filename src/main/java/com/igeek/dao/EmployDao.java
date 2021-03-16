package com.igeek.dao;

import com.igeek.entity.Employ;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class EmployDao extends BaseDao<Employ> {

    public List<Employ> selectAllForAdd() throws SQLException {
        List<Employ> employList = this.getBeanList("select * from employ", Employ.class);
        return employList;
    }

    public Employ selectOne(String name,String password) throws SQLException {
        Employ employ = this.getBean("select * from employ where username=? and password=?", Employ.class, name, password);
        return employ;
    }

    //插入
    public int insert(String name, String username, String password, String phone, String personId, Integer stationId, String address, String entryDate) throws SQLException {
        int i = this.update("insert into employ values(?,?,?,?,?,?,?,?,?)",null, name,username, password,phone,personId,stationId,address,entryDate);
        return i;
    }

    //删除
    public int delete(Integer id) throws SQLException {
        int i = this.update("delete from employ where employId=?", id);
        return i;
    }

    //查询所有员工
    public List<Employ> selectAll(Integer begin) throws SQLException {
        List<Employ> employList = this.getBeanList("select * from employ limit ?,9", Employ.class,begin);
        return employList;
    }
    //查询所有员工总数
    public int selectAllEmployCount() throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from employ");
        return o.intValue();
    }

    //根据name模糊查询
    public List<Employ> selectByLikeName(String name,Integer begin) throws SQLException {
        List<Employ> employByNameList = this.getBeanList("select * from employ where name like concat('%',?,'%') limit ?,9", Employ.class, name,begin);
        return employByNameList;
    }
    //根据name模糊查询总数
    public int selectByLikeNameCount(String name) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from employ where name like concat('%',?,'%')", name);
        return o.intValue();
    }

    //根据id查询
    public Employ selectById(Integer id,Integer begin) throws SQLException {
        Employ employ = this.getBean("select * from employ where employId = ? limit ?,9", Employ.class, id,begin);
        return employ;
    }

    //根据username模糊查询
    public List<Employ> selectByLikeUsername(String username,Integer begin) throws SQLException {
        List<Employ> beanList = this.getBeanList("select * from employ where username like concat('%',?,'%') limit ?,9", Employ.class, username,begin);
        return beanList;
    }

    //根据username模糊查询总数
    public int selectByLikeUsernameCount(String username) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from employ where username like concat('%',?,'%')", username);
        return o.intValue();
    }

    //修改信息
    public int updateEmploy(String username,String phone,String address,Integer stationId,Integer id) throws SQLException {
        int i = this.update("update employ set username=?,phone=?,address=?,stationId=? where employId = ?"
                , username, phone, address, stationId, id);
        return i;
    }

    //修改密码
    public int updatePassword(String password,Integer id) throws SQLException {
        int i = this.update("update employ set password = ? where employId = ?", password, id);
        return i;
    }

}
