package com.igeek.controller;

import com.igeek.entity.Employ;
import com.igeek.entity.RepairCom;
import com.igeek.entity.Serviceman;
import com.igeek.entity.Station;
import com.igeek.service.EmployService;
import com.igeek.service.RepairComService;
import com.igeek.service.ServicemanService;
import com.igeek.service.StationService;
import com.igeek.vo.PageVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ComServlet",urlPatterns = "/comAdd")
public class ComAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String comStyle = request.getParameter("comStyle");
        String address = request.getParameter("address");
        String masterId = request.getParameter("masterId");

        HttpSession session = request.getSession();

        switch (comStyle){
            case "repairCom":
                ServicemanService servicemanService = new ServicemanService();
                PageVo<Serviceman> vo = servicemanService.selectById("id", Integer.parseInt(masterId), 1);
                List<Serviceman> list = vo.getList();
                String masterName = null;
                for (Serviceman serviceman : list) {
                    masterName = serviceman.getName();
                }
                RepairComService repairComService = new RepairComService();
                boolean b = repairComService.insert(address, Integer.parseInt(masterId), masterName);
                if (b){
                    List<RepairCom> repairComList = repairComService.selectAllForAdd();
                    session.setAttribute("repairComList",repairComList);
                    PageVo<RepairCom> repairComPageVo = repairComService.selectAll();
                    session.setAttribute("voRepairCom",repairComPageVo);
                    response.sendRedirect("backstage/admin/repairCom.jsp");
                }
                break;

            case "station":
                EmployService employService = new EmployService();
                PageVo<Employ> vo1 = employService.selectById("id", Integer.parseInt(masterId), 1);
                List<Employ> list1 = vo1.getList();
                String masterName1 = null;
                for (Employ employ : list1) {
                    masterName1 = employ.getName();
                }
                StationService stationService = new StationService();
                boolean b1 = stationService.insert(address, Integer.parseInt(masterId), masterName1);
                if (b1){
                    List<Station> stationList = stationService.selectAllForAdd();
                    session.setAttribute("stationList",stationList);
                    PageVo<Station> stationPageVo = stationService.selectAll();
                    session.setAttribute("voStation",stationPageVo);
                    response.sendRedirect("backstage/admin/station.jsp");
                }
                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
