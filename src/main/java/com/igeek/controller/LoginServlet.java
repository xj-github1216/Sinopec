package com.igeek.controller;

import com.igeek.entity.*;
import com.igeek.service.*;
import com.igeek.vo.PageVo;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginServlet",urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String identity = request.getParameter("identity");

        switch (identity){
            case "admin":
                //管理员登录
                AdminService as = new AdminService();
                Admin admin = as.login(username, password);

                if (admin!=null){

                    //将用户信息存入会话
                    HttpSession session = request.getSession();
                    session.setAttribute("admin",admin);

                    //将身份存入会话，过滤器用
                    session.setAttribute("identity",identity);

                    //将站点人员、运维人员、故障分类存入会话
                    EmployService employService = new EmployService();
                    PageVo<Employ> voEmploy = employService.selectAll();
                    List<Employ> employList = employService.selectAllForAdd();

                    //运维人员
                    ServicemanService servicemanService = new ServicemanService();
                    PageVo<Serviceman> voServiceman = servicemanService.selectAll();
                    List<Serviceman> servicemanList = servicemanService.selectAllForAdd();

                    //故障分类
                    FaultService faultService = new FaultService();
                    PageVo<Fault> faultPageVo = faultService.selectAll();

                    //站点部门
                    StationService stationService = new StationService();
                    PageVo<Station> stationPageVo = stationService.selectAll();
                    List<Station> stationList = stationService.selectAllForAdd();

                    //运维部门
                    RepairComService repairComService = new RepairComService();
                    PageVo<RepairCom> repairComPageVo = repairComService.selectAll();
                    List<RepairCom> repairComList = repairComService.selectAllForAdd();

                    session.setAttribute("voEmploy",voEmploy);
                    session.setAttribute("voServiceman",voServiceman);
                    session.setAttribute("voFault",faultPageVo);
                    session.setAttribute("voStation",stationPageVo);
                    session.setAttribute("voRepairCom",repairComPageVo);
                    session.setAttribute("stationList",stationList);
                    session.setAttribute("repairComList",repairComList);
                    session.setAttribute("employList",employList);
                    session.setAttribute("servicemanList",servicemanList);

                    //所有故障订单
                    RepairService repairService = new RepairService();
                    PageVo<Repair> repairState012PageVo = repairService.selectAllByFaultStyle("faultStyle", "", 1);
                    session.setAttribute("repairState012PageVo",repairState012PageVo);
                    List<RepairDetail> repairDetails = repairService.selectState0ByRepairIdForThreeTable();
                    session.setAttribute("repairDetails",repairDetails);

                    //公告信息
                    NoticeService noticeService = new NoticeService();
                    PageVo<Notice> noticePageVo = noticeService.selectByTitle("title", "", 1);
                    session.setAttribute("noticePageVo",noticePageVo);
                    List<Notice> notices = noticeService.selectNoticeList();
                    session.setAttribute("notices",notices);

                    //将登录成功写入session
                    session.setAttribute("user",admin);

                    //登录成功
                    //request.getRequestDispatcher("backstage/admin/adminHoutaiIndex.jsp").forward(request,response);
                    response.sendRedirect("backstage/admin/adminHoutaiIndex.jsp");
                }else {
                    //登录失败
                    request.setAttribute("msg","用户名或密码错误");
                    request.getRequestDispatcher("login/index.jsp").forward(request,response);
                    /*response.sendRedirect("login/index.jsp");*/
                }

                break;
            case "employ":
                //站点人员登录
                EmployService es = new EmployService();
                Employ employ = es.login(username, password);

                if (employ!=null){
                    //将用户信息存入会话
                    HttpSession session = request.getSession();
                    session.setAttribute("employ",employ);

                    //将身份存入会话，过滤器用
                    session.setAttribute("identity",identity);

                    //故障分类
                    FaultService faultService = new FaultService();
                    PageVo<Fault> faultPageVo = faultService.selectAll();
                    session.setAttribute("voFault",faultPageVo);
                    //故障报修列表
                    RepairService repairService = new RepairService();
                    PageVo<Repair> repairPageVo = repairService.selectState0ByEmployId(employ.getEmployId());
                    session.setAttribute("voRepairUnprocess",repairPageVo);
                    //故障类型
                    FaultService faultService1 = new FaultService();
                    PageVo<Fault> faultPageVo1 = faultService.selectAll();
                    session.setAttribute("voFault",faultPageVo1);
                    //报修订单
                    PageVo<Repair> repairState12PageVo = repairService.selectState12ByEmployIdAndFaultStyle("faultStyle", "", employ.getEmployId(), 1);
                    session.setAttribute("repairState12PageVo",repairState12PageVo);
                    //故障明细
                    List<RepairDetail> repairDetails = repairService.selectState0ByRepairIdForThreeTable();
                    session.setAttribute("repairDetails",repairDetails);
                    //公告信息
                    NoticeService noticeService = new NoticeService();
                    PageVo<Notice> noticePageVo = noticeService.selectByTitle("title", "", 1);
                    session.setAttribute("noticePageVo",noticePageVo);

                    //将登录成功写入session
                    session.setAttribute("user",employ);


                    response.sendRedirect("backstage/employ/employHoutaiIndex.jsp");
                }else {
                    //登录失败
                    request.setAttribute("msg","用户名或密码错误");
                    request.getRequestDispatcher("login/index.jsp").forward(request,response);
                }
                break;
            case "serviceman":
                //运维人员登录
                ServicemanService ss = new ServicemanService();
                Serviceman serviceman = ss.login(username, password);

                if (serviceman!=null){
                    HttpSession session = request.getSession();
                    session.setAttribute("serviceman",serviceman);

                    //将身份存入会话，过滤器用
                    session.setAttribute("identity",identity);

                    //所有未处理的故障报修
                    RepairService repairService = new RepairService();
                    //所有未处理故障报修
                    PageVo<Repair> repairState0PageVo = repairService.selectAllState0();
                    List<RepairDetail> repairDetails = repairService.selectState0ByRepairIdForThreeTable();
                    //所有处理中故障报修
                    PageVo<Repair> repairState1PageVo = repairService.selectAllState1ByServicemanId(serviceman.getServicemanId());
                    //所有已处理故障报修
                    PageVo<Repair> repairState2PageVo = repairService.selectAllState2ByServicemanId(serviceman.getServicemanId());
                    session.setAttribute("voRepairState0",repairState0PageVo);
                    session.setAttribute("voRepairState1",repairState1PageVo);
                    session.setAttribute("voRepairState2",repairState2PageVo);
                    session.setAttribute("repairDetails",repairDetails);
                    session.setAttribute("serviceman",serviceman);
                    //公告信息
                    NoticeService noticeService = new NoticeService();
                    PageVo<Notice> noticePageVo = noticeService.selectByTitle("title", "", 1);
                    session.setAttribute("noticePageVo",noticePageVo);

                    //将登录成功写入session
                    session.setAttribute("user",serviceman);

                    response.sendRedirect("backstage/serviceman/serviceHoutaiIndex.jsp");
                }else {
                    //登录失败
                    request.setAttribute("msg","用户名或密码错误");
                    request.getRequestDispatcher("login/index.jsp").forward(request,response);
                }

                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
