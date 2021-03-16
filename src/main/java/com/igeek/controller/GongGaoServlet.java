package com.igeek.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.UUID;

@WebServlet(name = "GongGaoServlet",urlPatterns = "/gongGaoAdd")
/*上传文件必须添加@MultipartConfig()可以设置上传文件的大小*/
@MultipartConfig
public class GongGaoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String title = request.getParameter("title");
        String releaseDate = request.getParameter("releaseDate");
        String content = request.getParameter("content");

        //获取上传的文件
        Part part = request.getPart("file");
        //获取请求信息
        String name = part.getHeader("content-disposition");
        //获取上传文件的目录
        String root = request.getServletContext().getRealPath("/upload");
        //测试上传的路径
        System.out.println("测试上传的路径"+root);
        //获取文件的后缀
        String str = name.substring(name.lastIndexOf("."), name.length() - 1);
        //测试获取文件的后缀
        System.out.println("测试获取文件的后缀"+str);
        //生成一个新的文件名，不重复，数据库存储的就是这个文件名，不重复的
        String filename = root+"\\"+ UUID.randomUUID().toString()+str;
        System.out.println("测试产生新的文件名："+filename);
        //上传文件到指定目录
        part.write(filename);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
