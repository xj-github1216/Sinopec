package com.igeek.controller;

import com.igeek.entity.Admin;
import com.igeek.service.AdminService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AdminXinXiServlet",urlPatterns = "/adminXinXi")
public class AdminXinXiServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String personId = request.getParameter("personId");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String email = request.getParameter("email");

        //创建service对象
        AdminService service = new AdminService();
        //更新数据
        boolean b = service.update(name,personId, phone, address, email);

        if (b){

            //成功修改后，刷新会话中的admin
            Admin admin = service.login(username, password);
            HttpSession session = request.getSession();
            session.setAttribute("admin",admin);

            //跳转到首页
            response.sendRedirect("backstage/admin/adminHoutaiIndex.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
