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
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PeopleSearchServlet",urlPatterns = "/peopleSearch")
public class PeopleSearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String peopleStyle = request.getParameter("peopleStyle");
        /* 获取查询条件的类型 */
        String searchIndex = request.getParameter("searchIndex");
        /* 获取查询条件的值 */
        String keyword = request.getParameter("keyword");
        /* 获取当前页pageNow */
        String page = request.getParameter("pageNow");
        int pageNow = 1;
        if (page!=null){
            pageNow = Integer.parseInt(page);
        }

        EmployService employService = new EmployService();
        ServicemanService servicemanService = new ServicemanService();
        FaultService  faultService = new FaultService();
        StationService stationService = new StationService();
        RepairComService repairComService = new RepairComService();
        RepairService repairService = new RepairService();
        HttpSession session = request.getSession();

        switch (peopleStyle){
            case "zhandian":
                //站点人员页面查询
                PageVo<Serviceman> vo = new PageVo<>();
                switch (searchIndex){
                    case "name":
                        PageVo<Employ> voEmploy1 = employService.selectByLikeName(searchIndex, keyword, pageNow);
                        if (voEmploy1!=null){
                            session.setAttribute("voEmploy",voEmploy1);
                            response.sendRedirect("backstage/admin/zhandianrenyuan.jsp");
                        }else {
                            //查询失败
                            response.sendRedirect("backstage/admin/zhandianrenyuan.jsp");
                        }
                        break;
                    case "id":
                        PageVo<Employ> voEmploy2 = employService.selectById(searchIndex, Integer.parseInt(keyword), pageNow);
                        if (voEmploy2!=null){
                            session.setAttribute("voEmploy",voEmploy2);
                            response.sendRedirect("backstage/admin/zhandianrenyuan.jsp");
                        }else {
                            //查询失败
                            response.sendRedirect("backstage/admin/zhandianrenyuan.jsp");
                        }
                        break;
                    case "username":
                        PageVo<Employ> voEmploy3 = employService.selectByLikeUsername(searchIndex, keyword, pageNow);
                        if (voEmploy3!=null){
                            session.setAttribute("voEmploy",voEmploy3);
                            response.sendRedirect("backstage/admin/zhandianrenyuan.jsp");
                        }else {
                            //查询失败
                            response.sendRedirect("backstage/admin/zhandianrenyuan.jsp");
                        }
                        break;
                }
                break;

            case "yunwei":
                //运维人员页面查询
                switch (searchIndex){
                    case "name":
                        PageVo<Serviceman> voServiceman1 = servicemanService.selectByLikeName(searchIndex, keyword, pageNow);
                        if (voServiceman1!=null){
                            session.setAttribute("voServiceman",voServiceman1);
                            response.sendRedirect("backstage/admin/yunweirenyuan.jsp");
                        }else {
                            //查询失败
                            response.sendRedirect("backstage/admin/yunweirenyuan.jsp");
                        }
                        break;
                    case "id":
                        PageVo<Serviceman> voServiceman2 = servicemanService.selectById(searchIndex, Integer.parseInt(keyword), pageNow);
                        if (voServiceman2!=null){
                            session.setAttribute("voServiceman",voServiceman2);
                            response.sendRedirect("backstage/admin/yunweirenyuan.jsp");
                        }else {
                            //查询失败
                            response.sendRedirect("backstage/admin/yunweirenyuan.jsp");
                        }
                        break;
                    case "username":
                        PageVo<Serviceman> voServiceman3 = servicemanService.selectByLikeUsername(searchIndex, keyword, pageNow);
                        if (voServiceman3!=null){
                            session.setAttribute("voServiceman",voServiceman3);
                            response.sendRedirect("backstage/admin/yunweirenyuan.jsp");
                        }else {
                            //查询失败
                            response.sendRedirect("backstage/admin/yunweirenyuan.jsp");
                        }
                        break;
                }
                break;
            case "fault":
                //故障分类
                switch (searchIndex){
                    case "id":
                        PageVo<Fault> faultPageVo1 = faultService.selectById(searchIndex, Integer.parseInt(keyword), pageNow);
                        if (faultPageVo1!=null){
                            session.setAttribute("voFault",faultPageVo1);
                            response.sendRedirect("backstage/admin/guzhangfenlei.jsp");
                        }else {
                            //查询失败
                            response.sendRedirect("backstage/admin/guzhangfenlei.jsp");
                        }
                        break;
                    case "faultStyle":
                        PageVo<Fault> faultPageVo2 = faultService.selectByLikeFaultStyle(searchIndex, keyword, pageNow);
                        if (faultPageVo2!=null){
                            session.setAttribute("voFault",faultPageVo2);
                            response.sendRedirect("backstage/admin/guzhangfenlei.jsp");
                        }else {
                            //查询失败
                            response.sendRedirect("backstage/admin/guzhangfenlei.jsp");
                        }
                        break;
                }
                break;
            case "station":
                //站点部门
                switch (searchIndex){
                    case "id":
                        PageVo<Station> stationPageVo1 = stationService.selectById(searchIndex, Integer.parseInt(keyword), pageNow);
                        if (stationPageVo1!=null){
                            session.setAttribute("voStation",stationPageVo1);
                            response.sendRedirect(request.getContextPath()+"/backstage/admin/station.jsp");
                        }else {
                            //查询失败
                            response.sendRedirect("backstage/admin/station.jsp");
                        }
                        break;
                    case "address":
                        PageVo<Station> stationPageVo2 = stationService.selectByLikeAddress(searchIndex, keyword, pageNow);
                        if (stationPageVo2!=null){
                            session.setAttribute("voStation",stationPageVo2);
                            response.sendRedirect("backstage/admin/station.jsp");
                        }else {
                            //查询失败
                            response.sendRedirect("backstage/admin/station.jsp");
                        }
                        break;
                }
                break;
            case "repairCom":
                //运维部门
                switch (searchIndex){
                    case "id":
                        PageVo<RepairCom> repairComPageVo1 = repairComService.selectById(searchIndex, Integer.parseInt(keyword), pageNow);
                        if (repairComPageVo1!=null){
                            session.setAttribute("voRepairCom",repairComPageVo1);
                            response.sendRedirect("backstage/admin/repairCom.jsp");
                            /*request.getRequestDispatcher().forward(request,response);*/
                        }else {
                            //查询失败
                            response.sendRedirect("backstage/admin/repairCom.jsp");
                        }
                        break;
                    case "address":
                        PageVo<RepairCom> repairComPageVo2 = repairComService.selectByLikeAddress(searchIndex, keyword, pageNow);
                        if (repairComPageVo2!=null){
                            session.setAttribute("voRepairCom",repairComPageVo2);
                            response.sendRedirect("backstage/admin/repairCom.jsp");
                        }else {
                            //查询失败
                            response.sendRedirect("backstage/admin/repairCom.jsp");
                        }
                        break;
                }
                break;

            case "repairByEmployId":
                //故障报修
                String employId = request.getParameter("employId");
                switch (searchIndex){
                    case "faultStyle":
                        PageVo<Repair> repairPageVo = repairService.selectState0ByEmployIdByFaultStyle(searchIndex, keyword, Integer.parseInt(employId), pageNow);
                        if (repairPageVo!=null){
                            session.setAttribute("voRepairUnprocess",repairPageVo);
                            response.sendRedirect("backstage/employ/repairBaoXiu.jsp");
                        }else {
                            response.sendRedirect("backstage/employ/repairBaoXiu.jsp");
                        }
                        break;

                    case "id":
                        PageVo<Repair> repairPageVo1 = repairService.selectState0ByEmployIdById(searchIndex, Integer.parseInt(keyword), Integer.parseInt(employId), pageNow);
                        if (repairPageVo1!=null){
                            session.setAttribute("voRepairUnprocess",repairPageVo1);
                            response.sendRedirect("backstage/employ/repairBaoXiu.jsp");
                        }else {
                            response.sendRedirect("backstage/employ/repairBaoXiu.jsp");
                        }
                        break;
                }
                break;

            case "repairState0":
                //运维人员故障报修界面
                switch (searchIndex){
                    case "faultStyle":
                        PageVo<Repair> repairPageVo = repairService.selectState0ByFaultStyle(searchIndex, keyword, pageNow);
                        if (repairPageVo!=null){
                            session.setAttribute("voRepairState0",repairPageVo);
                            response.sendRedirect("backstage/serviceman/repairState0.jsp");
                        }else {
                            response.sendRedirect("backstage/serviceman/repairState0.jsp");
                        }
                        break;

                    case "id":
                        PageVo<Repair> repairPageVo1 = repairService.selectState0ById(searchIndex, Integer.parseInt(keyword), pageNow);
                        if (repairPageVo1!=null){
                            session.setAttribute("voRepairState0",repairPageVo1);
                            response.sendRedirect("backstage/serviceman/repairState0.jsp");
                        }else {
                            response.sendRedirect("backstage/serviceman/repairState0.jsp");
                        }
                        break;
                }
                break;

            case "repairState1":
                //运维人员故障报修界面
                String servicemanId = request.getParameter("servicemanId");
                switch (searchIndex){
                    case "faultStyle":
                        PageVo<Repair> repairPageVo = repairService.selectAllState1ByServicemanIdAndFaultStyle(searchIndex, Integer.parseInt(servicemanId), keyword, pageNow);
                        if (repairPageVo!=null){
                            session.setAttribute("voRepairState1",repairPageVo);
                            response.sendRedirect("backstage/serviceman/repairState1.jsp");
                        }else {
                            response.sendRedirect("backstage/serviceman/repairState1.jsp");
                        }
                        break;

                    case "id":
                        PageVo<Repair> repairPageVo1 = repairService.selectState1ByServicemanIdAndId(searchIndex,Integer.parseInt(keyword),Integer.parseInt(servicemanId),pageNow);
                        if (repairPageVo1!=null){
                            session.setAttribute("voRepairState1",repairPageVo1);
                            response.sendRedirect("backstage/serviceman/repairState1.jsp");
                        }else {
                            response.sendRedirect("backstage/serviceman/repairState1.jsp");
                        }
                        break;
                }
                break;

            case "repairState2":
                //运维人员故障报修界面
                String servicemanId1 = request.getParameter("servicemanId");
                switch (searchIndex){
                    case "faultStyle":
                        PageVo<Repair> repairPageVo = repairService.selectState2ByServicemanIdAndFaultStyle(searchIndex,keyword,Integer.parseInt(servicemanId1),pageNow);
                        if (repairPageVo!=null){
                            session.setAttribute("voRepairState2",repairPageVo);
                            response.sendRedirect("backstage/serviceman/repairState2.jsp");
                        }else {
                            response.sendRedirect("backstage/serviceman/repairState2.jsp");
                        }
                        break;

                    case "id":
                        PageVo<Repair> repairPageVo1 = repairService.selectState2ByServicemanIdAndId(searchIndex,Integer.parseInt(keyword),Integer.parseInt(servicemanId1),pageNow);
                        if (repairPageVo1!=null){
                            session.setAttribute("voRepairState2",repairPageVo1);
                            response.sendRedirect("backstage/serviceman/repairState2.jsp");
                        }else {
                            response.sendRedirect("backstage/serviceman/repairState2.jsp");
                        }
                        break;
                }
                break;

            case "repair":
                //管理员故障报修界面
                RepairService repairService1 = new RepairService();
                switch (searchIndex){
                    case "faultStyle":
                        PageVo<Repair> repairPageVo = repairService1.selectAllByFaultStyle(searchIndex, keyword, pageNow);
                        session.setAttribute("repairState012PageVo",repairPageVo);
                        response.sendRedirect("backstage/admin/repairState012.jsp");
                        break;
                    case "id":
                        PageVo<Repair> repairPageVo1 = repairService1.selectAllById(searchIndex, Integer.parseInt(keyword), pageNow);
                        session.setAttribute("repairState012PageVo",repairPageVo1);
                        response.sendRedirect("backstage/admin/repairState012.jsp");
                        break;
                    case "state":
                        PageVo<Repair> repairPageVo2 = repairService1.selectAllByState(searchIndex, keyword, pageNow);
                        session.setAttribute("repairState012PageVo",repairPageVo2);
                        response.sendRedirect("backstage/admin/repairState012.jsp");
                        break;
                }
                break;

            case "repairState12":
                //站点人员故障订单界面
                String employId1 = request.getParameter("employId");
                switch (searchIndex){
                    case "faultStyle":
                        PageVo<Repair> repairPageVo = repairService.selectState12ByEmployIdAndFaultStyle(searchIndex,keyword,Integer.parseInt(employId1),pageNow);
                        if (repairPageVo!=null){
                            session.setAttribute("repairState12PageVo",repairPageVo);
                            response.sendRedirect("backstage/employ/repairState12.jsp");
                        }else {
                            response.sendRedirect("backstage/employ/repairState12.jsp");
                        }
                        break;

                    case "id":
                        PageVo<Repair> repairPageVo1 = repairService.selectState12ByEmployIdAndId(searchIndex,Integer.parseInt(keyword),Integer.parseInt(employId1),pageNow);
                        if (repairPageVo1!=null){
                            session.setAttribute("repairState12PageVo",repairPageVo1);
                            response.sendRedirect("backstage/employ/repairState12.jsp");
                        }else {
                            response.sendRedirect("backstage/employ/repairState12.jsp");
                        }
                        break;
                }
                break;

            case "notice":
                //公告查询
                NoticeService noticeService = new NoticeService();
                String people = request.getParameter("people");
                switch (searchIndex){
                    case "title":
                        PageVo<Notice> noticePageVo = noticeService.selectByTitle(searchIndex, keyword, pageNow);
                        if (noticePageVo!=null){
                            session.setAttribute("noticePageVo",noticePageVo);
                            switch (people){
                                case "admin":
                                    response.sendRedirect("backstage/admin/gonggao.jsp");
                                    break;
                                case "employ":
                                    response.sendRedirect("backstage/employ/gonggao.jsp");
                                    break;
                                case "serviceman":
                                    response.sendRedirect("backstage/serviceman/gonggao.jsp");
                                    break;
                            }
                        }else {
                            switch (people){
                                case "admin":
                                    response.sendRedirect("backstage/admin/gonggao.jsp");
                                    break;
                                case "employ":
                                    response.sendRedirect("backstage/employ/gonggao.jsp");
                                    break;
                                case "serviceman":
                                    response.sendRedirect("backstage/serviceman/gonggao.jsp");
                                    break;
                            }
                        }
                        break;
                    case "id":
                        PageVo<Notice> noticePageVo1 = noticeService.selectById(searchIndex, Integer.parseInt(keyword), pageNow);
                        if (noticePageVo1!=null){
                            session.setAttribute("noticePageVo",noticePageVo1);
                            switch (people){
                                case "admin":
                                    response.sendRedirect("backstage/admin/gonggao.jsp");
                                    break;
                                case "employ":
                                    response.sendRedirect("backstage/employ/gonggao.jsp");
                                    break;
                                case "serviceman":
                                    response.sendRedirect("backstage/serviceman/gonggao.jsp");
                                    break;
                            }
                        }else {
                            switch (people){
                                case "admin":
                                    response.sendRedirect("backstage/admin/gonggao.jsp");
                                    break;
                                case "employ":
                                    response.sendRedirect("backstage/employ/gonggao.jsp");
                                    break;
                                case "serviceman":
                                    response.sendRedirect("backstage/serviceman/gonggao.jsp");
                                    break;
                            }
                        }
                        break;
                    case "releaseDate":
                        PageVo<Notice> noticePageVo2 = noticeService.selectByReleaseDate(searchIndex, keyword, pageNow);
                        if (noticePageVo2!=null){
                            session.setAttribute("noticePageVo",noticePageVo2);
                            switch (people){
                                case "admin":
                                    response.sendRedirect("backstage/admin/gonggao.jsp");
                                    break;
                                case "employ":
                                    response.sendRedirect("backstage/employ/gonggao.jsp");
                                    break;
                                case "serviceman":
                                    response.sendRedirect("backstage/serviceman/gonggao.jsp");
                                    break;
                            }
                        }else {
                            switch (people){
                                case "admin":
                                    response.sendRedirect("backstage/admin/gonggao.jsp");
                                    break;
                                case "employ":
                                    response.sendRedirect("backstage/employ/gonggao.jsp");
                                    break;
                                case "serviceman":
                                    response.sendRedirect("backstage/serviceman/gonggao.jsp");
                                    break;
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
