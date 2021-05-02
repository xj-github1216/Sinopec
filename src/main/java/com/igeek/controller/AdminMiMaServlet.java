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

@WebServlet(name = "AdminMiMaServlet",urlPatterns = "/adminMiMa")
public class AdminMiMaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String username = request.getParameter("username");
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String reNewPassword = request.getParameter("reNewPassword");

        if (newPassword.equals(reNewPassword)){    //确保新密码和确认密码一致
            //测试原密码是否正确
            AdminService service = new AdminService();
            Admin ad = service.login(username, oldPassword);
            if (ad!=null){
                //说明原密码正确
                boolean b = service.updateAdminPassword(username, newPassword);
                if (b){
                    Admin admin = service.login(username, newPassword);
                    HttpSession session = request.getSession();
                    session.setAttribute("admin",admin);
                    response.sendRedirect("login/index.jsp");
                }else {
                    response.sendRedirect("backstage/admin/xiugaimima.jsp");
                }
            }
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
