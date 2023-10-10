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

@WebServlet(name = "GetInstrumentServlet", value = "/GetInstrumentServlet")
public class GetInstrumentServlet extends HttpServlet {
    InstrumentService service =new InstrumentServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String iId=request.getParameter("iId");
        Instrument instrument=service.queryInstrumentById(Integer.valueOf(iId));

        request.setAttribute("instrument",instrument);
        request.getRequestDispatcher("instrument-modify.jsp").forward(request,response);
    }
}
