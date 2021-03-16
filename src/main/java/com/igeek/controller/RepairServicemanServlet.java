package com.igeek.controller;

import com.igeek.entity.Repair;
import com.igeek.service.RepairService;
import com.igeek.vo.PageVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "RepairServicemanServlet",urlPatterns = "/repairServiceman")
public class RepairServicemanServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String style = request.getParameter("style");
        RepairService repairService = new RepairService();
        HttpSession session = request.getSession();

        switch (style){
            case "search":
                //通过不同的方式搜索
                String searchMode = request.getParameter("searchMode");
                String keyword = request.getParameter("keyword");
                switch (searchMode){
                    case "faultStyle":
                        //通过故障类型搜索
                        PageVo<Repair> repairPageVo = repairService.selectState0ByFaultStyle(searchMode,keyword,1);
                        session.setAttribute("voRepairState0",repairPageVo);
                        response.sendRedirect("backstage/serviceman/repairState0.jsp");
                        break;

                    case "id":
                        //通过故障报修id搜索
                        PageVo<Repair> repairPageVo1 =  repairService.selectState0ById(searchMode,Integer.parseInt(keyword),1);
                        session.setAttribute("voRepairState0",repairPageVo1);
                        response.sendRedirect("backstage/serviceman/repairState0.jsp");
                        break;
                }
                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
