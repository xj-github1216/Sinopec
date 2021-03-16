package com.igeek.controller;

import com.igeek.entity.*;
import com.igeek.service.*;
import com.igeek.vo.PageVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailServlet",urlPatterns = "/edit")
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String style = request.getParameter("style");
        String id = request.getParameter("id");
        HttpSession session = request.getSession();

        switch (style){
            case "fault":
                String faultStyle = request.getParameter("faultStyle");
                String faultContent = request.getParameter("faultContent");
                FaultService faultService = new FaultService();
                boolean b = faultService.updateFault(faultStyle, faultContent, Integer.parseInt(id));
                if (b){
                    PageVo<Fault> faultPageVo = faultService.selectAll();
                    session.setAttribute("voFault",faultPageVo);
                    response.sendRedirect("backstage/admin/guzhangfenlei.jsp");
                }else {
                    response.sendRedirect("backstage/admin/guzhangfenlei.jsp");
                }
                break;

            case "employ":
                String empUsername = request.getParameter("username");
                String empPhone = request.getParameter("phone");
                String stationId = request.getParameter("stationId");
                String empAddress = request.getParameter("address");
                EmployService employService = new EmployService();
                boolean b1 = employService.updateEmploy(empUsername, empPhone, Integer.parseInt(stationId), empAddress, Integer.parseInt(id));
                if (b1){
                    PageVo<Employ> employPageVo = employService.selectAll();
                    session.setAttribute("voEmploy",employPageVo);
                    response.sendRedirect("backstage/admin/zhandianrenyuan.jsp");
                }else {
                    response.sendRedirect("backstage/admin/zhandianrenyuan.jsp");
                }
                break;

            case "serviceman":
                String serUsername = request.getParameter("username");
                String serPhone = request.getParameter("phone");
                String repair_id = request.getParameter("repair_id");
                String serAddress = request.getParameter("address");
                ServicemanService servicemanService = new ServicemanService();
                boolean b2 = servicemanService.updateServiceman(serUsername, serPhone, Integer.parseInt(repair_id), serAddress, Integer.parseInt(id));
                if (b2){
                    PageVo<Serviceman> servicemanPageVo = servicemanService.selectAll();
                    session.setAttribute("voServiceman",servicemanPageVo);
                    response.sendRedirect("backstage/admin/yunweirenyuan.jsp");
                }else {
                    response.sendRedirect("backstage/admin/yunweirenyuan.jsp");
                }
                break;

            case "station":
                String stationAddress = request.getParameter("address");
                String staMasterId = request.getParameter("masterId");
                EmployService employService1 = new EmployService();
                PageVo<Employ> vo = employService1.selectById("id", Integer.parseInt(staMasterId), 1);
                List<Employ> list = vo.getList();
                String masterName = null;
                for (Employ employ : list) {
                    masterName = employ.getName();
                }
                StationService stationService = new StationService();
                boolean b3 = stationService.updateStation(stationAddress, Integer.parseInt(staMasterId), masterName, Integer.parseInt(id));
                if (b3){
                    PageVo<Station> stationPageVo = stationService.selectAll();
                    session.setAttribute("voStation",stationPageVo);
                    response.sendRedirect("backstage/admin/station.jsp");
                }else {
                    response.sendRedirect("backstage/admin/station.jsp");
                }
                break;

            case "repairCom":
                String repAddress = request.getParameter("address");
                String repMasterId = request.getParameter("masterId");
                ServicemanService servicemanService1 = new ServicemanService();
                PageVo<Serviceman> vo1 = servicemanService1.selectById("id", Integer.parseInt(id), 1);
                List<Serviceman> list1 = vo1.getList();
                String masterName1 = null;
                for (Serviceman serviceman : list1) {
                    masterName1 = serviceman.getName();
                }
                RepairComService repairComService = new RepairComService();
                boolean b4 = repairComService.updateRepairCom(repAddress,Integer.parseInt(repMasterId),masterName1, Integer.parseInt(id));
                if (b4){
                    PageVo<RepairCom> repairComPageVo = repairComService.selectAll();
                    session.setAttribute("voRepairCom",repairComPageVo);
                    response.sendRedirect("backstage/admin/repairCom.jsp");
                }else {
                    response.sendRedirect("backstage/admin/repairCom.jsp");
                }
                break;

            case "repairEmploy":
                String faultStyle1 = request.getParameter("faultStyle");
                String faultDescribe = request.getParameter("faultDescribe");
                String employId = request.getParameter("employId");
                RepairService repairService = new RepairService();
                boolean b5 = repairService.updateByEmploy(faultStyle1, faultDescribe, Integer.parseInt(id));
                if (b5){
                    PageVo<Repair> repairPageVo = repairService.selectState0ByEmployId(Integer.parseInt(employId));
                    session.setAttribute("voRepairUnprocess",repairPageVo);
                    response.sendRedirect("backstage/employ/repairState0.jsp");
                }else {
                    response.sendRedirect("backstage/employ/repairState0.jsp");
                }
                break;

            case "repairServiceman":
                //接单
                String repairId = request.getParameter("id");
                String servicemanId = request.getParameter("servicemanId");
                String state = request.getParameter("state");
                RepairService service = new RepairService();
                boolean b6 = service.updateByIdForState(state, Integer.parseInt(servicemanId), Integer.parseInt(repairId));
                if (b6){
                    PageVo<Repair> repairState0PageVo = service.selectAllState0();
                    PageVo<Repair> repairState1PageVo = service.selectAllState1ByServicemanId(Integer.parseInt(servicemanId));
                    List<RepairDetail> repairDetails = service.selectState0ByRepairIdForThreeTable();
                    session.setAttribute("voRepairState0",repairState0PageVo);
                    session.setAttribute("voRepairState1",repairState1PageVo);
                    session.setAttribute("repairDetails",repairDetails);
                    response.sendRedirect("backstage/serviceman/repairState0.jsp");
                }
                break;

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
