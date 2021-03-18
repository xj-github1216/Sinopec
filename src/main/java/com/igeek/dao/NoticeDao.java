package com.igeek.dao;

import com.igeek.entity.Notice;

import java.sql.SQLException;
import java.util.List;

public class NoticeDao extends BaseDao<Notice> {

    //插入公告
    public int insert(String title,String releaseDate,String file,String content) throws SQLException {
        int i = this.update("insert into notice values(?,?,?,?,?)", null, title, releaseDate, file, content);
        return i;
    }

    //查询所有公告信息(通过标题搜索)
    public List<Notice> selectAllByTitle(String title,Integer begin) throws SQLException {
        List<Notice> list = this.getBeanList("select * from notice where title like concat('%',?,'%') order by releaseDate desc limit ?,9",
                Notice.class, title, begin);
        return list;
    }
    //查询所有公告信息总数(通过标题搜索)
    public int selectAllByTitleCount(String title) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from notice where title like concat('%',?,'%')", title);
        return o.intValue();
    }


    //通过id搜索
    public Notice selectById(Integer id,Integer begin) throws SQLException {
        Notice notice = this.getBean("select * from notice where id=? limit ?,9", Notice.class, id, begin);
        return notice;
    }

    //通过发布时间搜索
    public List<Notice> selectByReleaseDate(String releaseDate,Integer begin) throws SQLException {
        List<Notice> list = this.getBeanList("select * from notice where releaseDate like concat('%',?,'%') order by releaseDate desc limit ?,9",
                Notice.class, releaseDate, begin);
        return list;
    }
    //通过发布时间搜索总数
    public int selectByReleaseDateCount(String releaseDate) throws SQLException {
        Long o = (Long)this.getSingleValue("select count(*) from notice where releaseDate like concat('%',?,'%')",
                releaseDate);
        return o.intValue();
    }


    //通过id删除
    public int deleteById(Integer id) throws SQLException {
        int i = this.update("delete from notice where id=?", id);
        return i;
    }

    //修改
    public int update(String title,String content,Integer id) throws SQLException {
        int i = this.update("update notice set title=?,content=? where id=?",
                title, content, id);
        return i;
    }

}
