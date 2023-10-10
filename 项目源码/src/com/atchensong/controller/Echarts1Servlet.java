package com.atchensong.controller;

import com.atchensong.proj.Instrument;
import com.atchensong.proj.Remedy;
import com.atchensong.service.InstrumentService;
import com.atchensong.service.impl.InstrumentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.util.List;

@WebServlet(name = "Echarts1Servlet", value = "/Echarts1Servlet")
public class Echarts1Servlet extends HttpServlet {
    InstrumentService service =new InstrumentServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Instrument> instruments=service.InstrumentsNum() ;
        System.out.println(instruments);
        request.setAttribute("iNum",instruments);
        request.getRequestDispatcher("echarts4.jsp").forward(request,response);
    }
}
