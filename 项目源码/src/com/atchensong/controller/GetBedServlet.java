package com.atchensong.controller;

import com.atchensong.proj.Bed;
import com.atchensong.service.BedService;
import com.atchensong.service.impl.BedServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

/**
 * @author: 赵程
 * @Date: 2023/01/08 10:06
 */
@WebServlet(name = "GetBedServlet", value = "/GetBedServlet")
public class GetBedServlet extends HttpServlet {
    BedService service=new BedServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String  bid=request.getParameter("bid");
        Bed bed=service.queryBedById(Integer.valueOf(bid));
        request.setAttribute("bed",bed);
        request.getRequestDispatcher("bed-edit.jsp").forward(request,response);
    }
}
