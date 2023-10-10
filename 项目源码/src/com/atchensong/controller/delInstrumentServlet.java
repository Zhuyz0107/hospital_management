package com.atchensong.controller;

import com.atchensong.service.InstrumentService;
import com.atchensong.service.impl.InstrumentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "delInstrumentServlet", value = "/delInstrumentServlet")
public class delInstrumentServlet extends HttpServlet {
    InstrumentService service =new InstrumentServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String iId=request.getParameter("iId");
        service.delInstrumentById(Integer.valueOf(iId));
        response.sendRedirect(request.getContextPath()+"/ListServlet1");
    }
}
