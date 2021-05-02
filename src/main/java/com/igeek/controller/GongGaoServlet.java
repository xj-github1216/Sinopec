package com.igeek.controller;

import com.igeek.entity.Notice;
import com.igeek.service.NoticeService;
import com.igeek.vo.PageVo;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.UUID;

@WebServlet(name = "GongGaoServlet",urlPatterns = "/gongGaoAdd")
/*上传文件必须添加@MultipartConfig()可以设置上传文件的大小*/
@MultipartConfig()
public class GongGaoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String title = request.getParameter("title");
        String releaseDate = request.getParameter("releaseDate");
        String content = request.getParameter("content");
        Notice notice = new Notice(title,releaseDate,content);

        Part part = request.getPart("file");
        String oldName = part.getHeader("content-disposition");
        if (oldName!=null && oldName.contains(".") ){   //真正上传文件
            //用UUID给文件取新名字
            String newName = UUID.randomUUID()+oldName.substring(oldName.lastIndexOf("."),oldName.length()-1);

            //将文件信息存储到当前的notice中
            notice.setFile("/temp/"+newName);
            //将文件信息传递到本地服务器上
            part.write("D:\\Desktop\\temp\\"+newName);

        }

        //添加公告
        NoticeService service = new NoticeService();
        boolean b = service.insertNotice(notice);
        if (b){
            //添加成功
            HttpSession session = request.getSession();
            NoticeService noticeService = new NoticeService();
            PageVo<Notice> noticePageVo = noticeService.selectByTitle("title", "", 1);
            session.setAttribute("noticePageVo",noticePageVo);

            response.sendRedirect("backstage/admin/gonggao.jsp");
        }

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
