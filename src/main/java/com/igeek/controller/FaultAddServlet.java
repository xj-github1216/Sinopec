package com.igeek.controller;

import com.igeek.entity.Fault;
import com.igeek.service.FaultService;
import com.igeek.vo.PageVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FaultAddServlet",urlPatterns = "/faultAdd")
public class FaultAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        //添加故障类型
        String faultStyle = request.getParameter("faultStyle");
        String faultContent = request.getParameter("faultContent");

        FaultService service = new FaultService();
        boolean insert = service.insert(faultStyle, faultContent);
        if (insert){

            //添加无误后，刷新会话中的faultList
            FaultService faultService = new FaultService();
            PageVo<Fault> faultPageVo = faultService.selectAll();
            HttpSession session = request.getSession();
            session.setAttribute("voFault",faultPageVo);

            //跳转故障分类页面
            response.sendRedirect("backstage/admin/guzhangfenlei.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
