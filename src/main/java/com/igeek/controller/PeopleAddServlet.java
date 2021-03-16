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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.List;

@WebServlet(name = "EmployAddServlet",urlPatterns = "/peopleAdd")
public class PeopleAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String people = request.getParameter("people");
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String personId = request.getParameter("personId");
        String station_id = request.getParameter("stationId");
        String address = request.getParameter("address");
        String entryDate = request.getParameter("entryDate");
        String repairId = request.getParameter("repair_id");

        HttpSession session = request.getSession();

        switch (people){
            case "employ":

                int stationId = Integer.parseInt(station_id);

                EmployService service1 = new EmployService();
                boolean a = service1.insert(name, username, password, phone, personId, stationId, address, entryDate);

                if (a){
                    //添加成功，将新添加的站点员工加入session中的employList
                    PageVo<Employ> vo = service1.selectAll();
                    List<Employ> employList = service1.selectAllForAdd();
                    session.setAttribute("employList",employList);
                    session.setAttribute("voEmploy",vo);

                    response.sendRedirect("backstage/admin/zhandianrenyuan.jsp");
                }else {
                    response.sendRedirect("backstage/admin/zhandianRenyuanAdd.jsp");
                }
                break;
            case "serviceman":
                int repair_id = Integer.parseInt(repairId);
                ServicemanService service2 = new ServicemanService();
                boolean b = service2.insert(name, username, password, personId, phone, repair_id, address, entryDate);
                if (b){
                    //添加成功，将新添加的运维员工加入session中的servicemenList
                    PageVo<Serviceman> vo = service2.selectAll();
                    List<Serviceman> servicemanList = service2.selectAllForAdd();
                    session.setAttribute("servicemanList",servicemanList);
                    session.setAttribute("voServiceman",vo);

                    response.sendRedirect("backstage/admin/yunweirenyuan.jsp");
                }else {
                    response.sendRedirect("backstage/admin/yunweiRenyuanAdd.jsp");
                }
                break;
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
