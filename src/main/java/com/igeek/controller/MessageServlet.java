package com.igeek.controller;

import com.igeek.entity.Employ;
import com.igeek.entity.Serviceman;
import com.igeek.service.EmployService;
import com.igeek.service.ServicemanService;
import com.igeek.vo.PageVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "EmployMessageServlet",urlPatterns = "/message")
public class MessageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String peopleStyle = request.getParameter("peopleStyle");
        String style = request.getParameter("style");
        String id = request.getParameter("id");
        HttpSession session = request.getSession();

        switch (peopleStyle){
            case "employ":
                switch (style){
                    case "updateMessage":
                        String empUsername = request.getParameter("username");
                        String empPhone = request.getParameter("phone");
                        String empAddress = request.getParameter("address");
                        String stationId = request.getParameter("stationId");
                        EmployService employService = new EmployService();
                        boolean b = employService.updateEmploy(empUsername, empPhone, Integer.parseInt(stationId), empAddress, Integer.parseInt(id));
                        if (b){
                            //将新的employ对象存入会话
                            PageVo<Employ> vo = employService.selectById("id", Integer.parseInt(id), 1);
                            for (Employ employ : vo.getList()) {
                                session.setAttribute("employ",employ);
                            }
                            response.sendRedirect("backstage/employ/employHoutaiIndex.jsp");
                        }
                        break;
                    case "updatePassword":
                        String oldPassword = request.getParameter("oldPassword");
                        String newPassword = request.getParameter("newPassword");
                        String reNewPassword = request.getParameter("reNewPassword");
                        //判断新密码和确认密码是否一致
                        if (newPassword!=null && !newPassword.equals("") && newPassword.equals(reNewPassword)){
                            EmployService employService1 = new EmployService();
                            PageVo<Employ> vo = employService1.selectById("id", Integer.parseInt(id), 1);
                            Employ employ = null;
                            for (Employ emp: vo.getList()) {
                                employ = emp;
                            }
                            if (employ!=null && employ.getPassword().equals(oldPassword)){
                                //说明旧密码输入正确
                                boolean b1 = employService1.updateEmployPassword(newPassword, employ.getEmployId());
                                if (b1){
                                    //将新的employ存入session
                                    PageVo<Employ> vo1 = employService1.selectById("id",Integer.parseInt(id),1);
                                    for (Employ employ1 : vo1.getList()) {
                                        session.setAttribute("employ",employ1);
                                    }
                                    response.sendRedirect("login/index.jsp");
                                }
                            }
                        }
                        break;
                }
                break;


            case "serviceman":
                switch (style){
                    case "updateMessage":
                        String repUsername = request.getParameter("username");
                        String repPhone = request.getParameter("phone");
                        String repAddress = request.getParameter("address");
                        String repair_id = request.getParameter("repair_id");
                        ServicemanService servicemanService = new ServicemanService();
                        boolean b = servicemanService.updateServiceman(repUsername, repPhone, Integer.parseInt(repair_id), repAddress, Integer.parseInt(id));
                        if (b){
                            //将新的employ对象存入会话
                            PageVo<Serviceman> vo = servicemanService.selectById("id", Integer.parseInt(id), 1);
                            for (Serviceman serviceman : vo.getList()) {
                                session.setAttribute("serviceman",serviceman);
                            }
                            response.sendRedirect("backstage/serviceman/serviceHoutaiIndex.jsp");
                        }
                        break;
                    case "updatePassword":
                        String oldPassword = request.getParameter("oldPassword");
                        String newPassword = request.getParameter("newPassword");
                        String reNewPassword = request.getParameter("reNewPassword");
                        //判断新密码和确认密码是否一致
                        if (newPassword!=null && !newPassword.equals("") && newPassword.equals(reNewPassword)){
                            ServicemanService servicemanService1 = new ServicemanService();
                            PageVo<Serviceman> vo = servicemanService1.selectById("id", Integer.parseInt(id), 1);
                            Serviceman serviceman = null;
                            for (Serviceman ser: vo.getList()) {
                                serviceman = ser;
                            }
                            if (serviceman!=null && serviceman.getPassword().equals(oldPassword)){
                                //说明旧密码输入正确
                                boolean b1 = servicemanService1.updateServicemanPassword(newPassword, serviceman.getServicemanId());
                                if (b1){
                                    //将新的serviceman存入session
                                    PageVo<Serviceman> vo1 = servicemanService1.selectById("id",Integer.parseInt(id),1);
                                    for (Serviceman serviceman1 : vo1.getList()) {
                                        session.setAttribute("serviceman",serviceman1);
                                    }
                                    response.sendRedirect("login/index.jsp");
                                }
                            }
                        }
                        break;
                }
                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
