package com.igeek.service;

import com.igeek.dao.NoticeDao;
import com.igeek.entity.Notice;
import com.igeek.utils.JDBCUtils;
import com.igeek.vo.PageVo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NoticeService {
    private NoticeDao dao = new NoticeDao();

    //插入公告
    public boolean insertNotice(Notice notice){
        try {
            int i = dao.insert(notice.getTitle(), notice.getReleaseDate(), notice.getFile(), notice.getContent());
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }

    //查询所有公告信息
    public List<Notice> selectNoticeList(){
        List<Notice> notices = null;
        try {
            notices = dao.selectAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return notices;
    }

    //查询所有公告信息(通过标题搜索)
    public PageVo<Notice> selectByTitle(String style,String title,Integer pageNow){
        PageVo<Notice> vo = null;
        try {

            int counts = dao.selectAllByTitleCount(title);
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            int begin = (pageNow-1)*9;
            List<Notice> notices = dao.selectAllByTitle(title, begin);
            vo = new PageVo<>(style,title,pageNow,myPages,notices);

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //通过id搜索
    public PageVo<Notice> selectById(String style,Integer id,Integer pageNow){
        PageVo<Notice> vo  = null;
        try {
            int begin  = (pageNow-1)*9;
            Notice notice = dao.selectById(id, begin);
            int myPages= 1;
            List<Notice> list = new ArrayList<>();
            list.add(notice);
            vo = new PageVo<>(style,id+"",pageNow,myPages,list);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return vo;
    }

    //通过发布时间搜索
    public PageVo<Notice> selectByReleaseDate(String style,String releaseDate,Integer pageNow){
        PageVo<Notice> vo = null;
        try {

            int counts = dao.selectByReleaseDateCount(releaseDate);
            int myPages = (int)(counts%9==0?counts/9:Math.ceil(counts/9.0));
            int begin = (pageNow-1)*9;
            List<Notice> notices = dao.selectByReleaseDate(releaseDate,begin);
            vo = new PageVo<>(style,releaseDate,pageNow,myPages,notices);

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
            int i = dao.deleteById(id);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }

    //修改
    public boolean update(String title,String content,Integer id){
        try {
            int i = dao.update(title, content, id);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeConn();
        }
        return false;
    }

}
