package com.atchensong.controller;

import com.atchensong.proj.Instrument;
import com.atchensong.service.InstrumentService;
import com.atchensong.service.impl.InstrumentServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListServlet1", value = "/ListServlet1")
public class ListServlet1 extends HttpServlet {
   InstrumentService service =new InstrumentServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Instrument>  instruments= service.queryAll();
        System.out.println(instruments);
        request.setAttribute("instruments",instruments);
        request.getRequestDispatcher("/instrument-manage.jsp").forward(request,response);
    }
}
