package com.atchensong.controller;

import com.atchensong.proj.Bed;
import com.atchensong.service.BedService;
import com.atchensong.service.impl.BedServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
/**
 * @author: 赵程
 * @Date: 2023/01/07 20:23
 */
@WebServlet(name = "ListServlet", value = "/ListServlet")
public class ListServlet extends HttpServlet {
    BedService service=new BedServiceImpl();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Bed> beds=service.queryAll();
        System.out.println(beds);
        request.setAttribute("beds",beds);
        request.getRequestDispatcher("/bed-manage.jsp").forward(request,response);
    }
}



























