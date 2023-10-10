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
 * @Date: 2023/01/08 9:40
 */
@WebServlet(name = "UpdateBedServlet", value = "/UpdateBedServlet")
public class UpdateBedServlet extends HttpServlet {
    BedService service=new BedServiceImpl();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer bid=Integer.parseInt(request.getParameter("bid"));
        Integer pid=Integer.parseInt(request.getParameter("pid"));
        Bed bed=new Bed(bid,pid);
        service.UpdateBed(bed);
        request.getRequestDispatcher("/bed-edit.jsp").forward(request,response);
    }
}




















