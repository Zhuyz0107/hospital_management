package com.atchensong.controller;



import com.atchensong.proj.Remedy;
import com.atchensong.service.RemedyService;
import com.atchensong.service.impl.RemedyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EchartsServlet", value = "/EchartsServlet")
public class EchartsServlet extends HttpServlet {
    RemedyService service =new RemedyServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Remedy> remedies=service.RemedyNum();
        System.out.println(remedies);
        request.setAttribute("rNum",remedies);
        request.getRequestDispatcher("echarts3.jsp").forward(request,response);
    }
}
