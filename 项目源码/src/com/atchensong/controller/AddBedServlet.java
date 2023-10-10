package com.atchensong.controller;

import com.atchensong.proj.Bed;
import com.atchensong.service.BedService;
import com.atchensong.service.impl.BedServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author: 赵程
 * @Date: 2023/01/07 23:09
 */

@WebServlet(name = "AddBedServlet", value = "/AddBedServlet")
public class AddBedServlet extends HttpServlet {
    BedService service=new BedServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer bid = Integer.valueOf(request.getParameter("bid"));
        String  bedState=request.getParameter("bedState");
        service.addBed(new Bed(bid,bedState));
        request.getRequestDispatcher("/bed-add.jsp").forward(request,response);
    }
}















