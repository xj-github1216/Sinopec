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

@WebServlet(name = "DeleteServlet",urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String deleteStyle = request.getParameter("deleteStyle");
        String style = request.getParameter("style");

        HttpSession session = request.getSession();

        switch (style){
            case "single":
                String id = request.getParameter("id");
                switch (deleteStyle){
                    case "serviceman":
                        ServicemanService servicemanService = new ServicemanService();
                        boolean b1 = servicemanService.delete(Integer.parseInt(id));
                        if (b1){
                            PageVo<Serviceman> vo = servicemanService.selectAll();
                            session.setAttribute("voServiceman",vo);
                            response.sendRedirect("backstage/admin/yunweirenyuan.jsp");
                        }
                        break;
                    case "employ":
                        EmployService employService = new EmployService();
                        boolean b2 = employService.delete(Integer.parseInt(id));
                        if (b2){
                            PageVo<Employ> employPageVo = employService.selectAll();
                            session.setAttribute("voEmploy",employPageVo);
                            response.sendRedirect("backstage/admin/zhandianrenyuan.jsp");
                        }
                        break;
                    case "fault":
                        FaultService faultService = new FaultService();
                        boolean b3 = faultService.delete(Integer.parseInt(id));
                        if (b3){
                            PageVo<Fault> faultPageVo = faultService.selectAll();
                            session.setAttribute("voFault",faultPageVo);
                            response.sendRedirect("backstage/admin/guzhangfenlei.jsp");
                        }
                        break;
                    case "station":
                        StationService stationService = new StationService();
                        boolean b4 = stationService.delete(Integer.parseInt(id));
                        if (b4){
                            PageVo<Station> stationPageVo = stationService.selectAll();
                            session.setAttribute("voStation",stationPageVo);
                            List<Station> stationList = stationService.selectAllForAdd();
                            session.setAttribute("stationList",stationList);
                            response.sendRedirect("backstage/admin/station.jsp");
                        }
                        break;
                    case "repairCom":
                        RepairComService repairComService = new RepairComService();
                        boolean b5 = repairComService.delete(Integer.parseInt(id));
                        if (b5){
                            PageVo<RepairCom> repairComPageVo = repairComService.selectAll();
                            session.setAttribute("voRepairCom",repairComPageVo);
                            List<RepairCom> repairComList = repairComService.selectAllForAdd();
                            session.setAttribute("repairComList",repairComList);
                            response.sendRedirect("backstage/admin/repairCom.jsp");
                        }
                        break;

                    case "repairEmploy":
                        String employId = request.getParameter("employId");
                        RepairService repairService = new RepairService();
                        boolean b6 = repairService.deleteById(Integer.parseInt(id));
                        if (b6){
                            PageVo<Repair> repairPageVo = repairService.selectState0ByEmployId(Integer.parseInt(employId));
                            session.setAttribute("voRepairUnprocess",repairPageVo);
                            response.sendRedirect("backstage/employ/repairState0.jsp");
                        }
                        break;

                    case "repairServiceman":
                        RepairService repairService1 = new RepairService();
                        boolean b7 = repairService1.deleteById(Integer.parseInt(id));
                        if (b7){
                            PageVo<Repair> repairPageVo = repairService1.selectAllState0();
                            session.setAttribute("voRepairState0",repairPageVo);
                            response.sendRedirect("backstage/serviceman/repairState0.jsp");
                        }
                        break;
                }
                break;

            case "multiple":     //多个查询
                switch (deleteStyle){
                    case "serviceman":
                        String strings = request.getParameter("ids");
                        //获得的ids是一个字符串,需要将字符串切割
                        String[] ids = strings.split(",");
                        ServicemanService servicemanService = new ServicemanService();
                        int flag = 0;
                        for (String s : ids) {
                            boolean b = servicemanService.delete(Integer.parseInt(s));
                            if (b){
                                flag++;
                            }
                        }
                        if (flag == ids.length){
                            //说明全部删除
                            PageVo<Serviceman> servicemanPageVo = servicemanService.selectAll();
                            List<Serviceman> servicemanList = servicemanService.selectAllForAdd();
                            session.setAttribute("servicemanList",servicemanList);
                            session.setAttribute("voServiceman",servicemanPageVo);
                            response.sendRedirect("backstage/admin/yunweirenyuan.jsp");
                        }
                        break;
                    case "employ":
                        String stringIds = request.getParameter("ids");
                        //获得的ids是一个字符串,需要将字符串切割
                        String[] idds = stringIds.split(",");
                        EmployService employService = new EmployService();
                        int flag1 = 0;
                        for (String s : idds) {
                            boolean b = employService.delete(Integer.parseInt(s));
                            if (b){
                                flag1++;
                            }
                        }
                        if (flag1 == idds.length){
                            //说明全部删除
                            PageVo<Employ> employPageVo = employService.selectAll();
                            List<Employ> employList = employService.selectAllForAdd();
                            session.setAttribute("employList",employList);
                            session.setAttribute("voEmploy",employPageVo);
                            response.sendRedirect("backstage/admin/zhandianrenyuan.jsp");
                        }
                        break;
                    case "fault":
                        String stringIdds = request.getParameter("ids");
                        //获得的ids是一个字符串,需要将字符串切割
                        String[] iddds = stringIdds.split(",");
                        FaultService faultService = new FaultService();
                        int flag2 = 0;
                        for (String s : iddds) {
                            boolean b = faultService.delete(Integer.parseInt(s));
                            if (b){
                                flag2++;
                            }
                        }
                        if (flag2 == iddds.length){
                            //说明全部删除
                            PageVo<Fault> faultPageVo = faultService.selectAll();
                            session.setAttribute("voFault",faultPageVo);
                            response.sendRedirect("backstage/admin/guzhangfenlei.jsp");
                        }
                        break;
                    case "station":
                        String stringIddds = request.getParameter("ids");
                        //获得的ids是一个字符串,需要将字符串切割
                        String[] idddds = stringIddds.split(",");
                        StationService stationService = new StationService();
                        int flag3 = 0;
                        for (String s : idddds) {
                            boolean b = stationService.delete(Integer.parseInt(s));
                            if (b){
                                flag3++;
                            }
                        }
                        if (flag3 == idddds.length){
                            //说明全部删除
                            PageVo<Station> stationPageVo = stationService.selectAll();
                            session.setAttribute("voStation",stationPageVo);
                            List<Station> stationList = stationService.selectAllForAdd();
                            session.setAttribute("stationList",stationList);
                            response.sendRedirect("backstage/admin/station.jsp");
                        }
                        break;
                    case "repairCom":
                        String stringIdddds = request.getParameter("ids");
                        //获得的ids是一个字符串,需要将字符串切割
                        String[] iddddds = stringIdddds.split(",");
                        RepairComService repairComService = new RepairComService();
                        int flag4 = 0;
                        for (String s : iddddds) {
                            boolean b = repairComService.delete(Integer.parseInt(s));
                            if (b){
                                flag4++;
                            }
                        }
                        if (flag4 == iddddds.length){
                            //说明全部删除
                            PageVo<RepairCom> repairComPageVo = repairComService.selectAll();
                            session.setAttribute("voRepairCom",repairComPageVo);
                            List<RepairCom> repairComList = repairComService.selectAllForAdd();
                            session.setAttribute("repairComList",repairComList);
                            response.sendRedirect("backstage/admin/repairCom.jsp");
                        }
                        break;

                    case "repairEmploy":
                        String stringIddddds = request.getParameter("ids");
                        //获得的ids是一个字符串,需要将字符串切割
                        String[] idddddds = stringIddddds.split(",");
                        RepairService repairService = new RepairService();
                        int flag5 = 0;
                        for (String s : idddddds) {
                            boolean b = repairService.deleteById(Integer.parseInt(s));
                            if (b){
                                flag5++;
                            }
                        }
                        if (flag5 == idddddds.length){
                            String employId = request.getParameter("employId");
                            //说明全部删除
                            PageVo<Repair> repairPageVo = repairService.selectState0ByEmployId(Integer.parseInt(employId));
                            session.setAttribute("voRepairUnprocess",repairPageVo);
                            response.sendRedirect("backstage/employ/repairState0.jsp");
                        }
                        break;

                    case "repairServiceman":
                        String stringIdddddds = request.getParameter("ids");
                        //获得的ids是一个字符串,需要将字符串切割
                        String[] iddddddds = stringIdddddds.split(",");
                        RepairService repairService1 = new RepairService();
                        int flag6 = 0;
                        for (String s : iddddddds) {
                            boolean b = repairService1.deleteById(Integer.parseInt(s));
                            if (b){
                                flag6++;
                            }
                        }
                        if (flag6 == iddddddds.length){
                            //说明全部删除
                            PageVo<Repair> repairPageVo = repairService1.selectAllState0();
                            session.setAttribute("voRepairState0",repairPageVo);
                            response.sendRedirect("backstage/serviceman/repairState0.jsp");
                        }
                        break;

                }

        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
