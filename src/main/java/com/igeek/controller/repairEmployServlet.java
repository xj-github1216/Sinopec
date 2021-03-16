package com.igeek.controller;

import com.igeek.entity.Repair;
import com.igeek.entity.RepairDetail;
import com.igeek.service.RepairService;
import com.igeek.vo.PageVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "repairEmployServlet",urlPatterns = "/repairEmploy")
public class repairEmployServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String style = request.getParameter("style");
        HttpSession session = request.getSession();

        switch (style){
            case "repairAdd":
                //故障报修申请
                String faultStyle = request.getParameter("faultStyle");
                String faultDescribe = request.getParameter("faultDescribe");
                String repairDate = request.getParameter("repairDate");
                String employId = request.getParameter("employId");
                RepairService repairService = new RepairService();
                boolean b = repairService.insertRepair(faultStyle, faultDescribe, Integer.parseInt(employId), repairDate);
                if (b) {
                    PageVo<Repair> repairPageVo = repairService.selectState0ByEmployId(Integer.parseInt(employId));
                    session.setAttribute("voRepairUnprocess",repairPageVo);
                    List<RepairDetail> repairDetails = repairService.selectState0ByRepairIdForThreeTable();
                    session.setAttribute("repairDetails",repairDetails);

                    response.sendRedirect("backstage/employ/repairState0.jsp");
                }
                break;

            case "searchState0":
                //通过不同的方式搜索
                String searchMode = request.getParameter("searchMode");
                String employId1 = request.getParameter("employId");
                String keyword = request.getParameter("keyword");
                RepairService repairService1 = new RepairService();
                switch (searchMode){
                    case "faultStyle":
                        //通过故障类型搜索
                        PageVo<Repair> repairPageVo = repairService1.selectState0ByEmployIdByFaultStyle(searchMode, keyword, Integer.parseInt(employId1), 1);
                        session.setAttribute("voRepairUnprocess",repairPageVo);
                        response.sendRedirect("backstage/employ/repairState0.jsp");
                        break;

                    case "id":
                        //通过故障报修id搜索
                        PageVo<Repair> repairPageVo1 =  repairService1.selectState0ByEmployIdById(searchMode,Integer.parseInt(keyword),Integer.parseInt(employId1),1);
                        session.setAttribute("voRepairUnprocess",repairPageVo1);
                        response.sendRedirect("backstage/employ/repairState0.jsp");
                        break;
                }
                break;

            case "searchState12":
                //通过不同的方式搜索
                String searchMode1 = request.getParameter("searchMode");
                String employId2 = request.getParameter("employId");
                String keyword1 = request.getParameter("keyword");
                RepairService repairService2 = new RepairService();
                switch (searchMode1){
                    case "faultStyle":
                        //通过故障类型搜索
                        PageVo<Repair> repairPageVo = repairService2.selectState12ByEmployIdAndFaultStyle(searchMode1,keyword1,Integer.parseInt(employId2),1);
                        session.setAttribute("repairState12PageVo",repairPageVo);
                        response.sendRedirect("backstage/employ/repairState12.jsp");
                        break;

                    case "id":
                        //通过故障报修id搜索
                        PageVo<Repair> repairPageVo1 =  repairService2.selectState12ByEmployIdAndId(searchMode1,Integer.parseInt(keyword1),Integer.parseInt(employId2),1);
                        session.setAttribute("repairState12PageVo",repairPageVo1);
                        response.sendRedirect("backstage/employ/repairState12.jsp");
                        break;

                    case "state":
                        //通过处理状态搜索
                        if (keyword1.equals("处理中")||keyword1.equals("已处理")||keyword1.equals("处理")||keyword1.equals("中")||keyword1.equals("已")){
                            PageVo<Repair> repairPageVo2 =  repairService2.selectRepairByEmployIdAndState(searchMode1,keyword1,Integer.parseInt(employId2),1);
                            session.setAttribute("repairState12PageVo",repairPageVo2);
                            response.sendRedirect("backstage/employ/repairState12.jsp");
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
