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

@WebServlet(name = "FindInstrumentServlet", value = "/FindInstrumentServlet")
public class FindInstrumentServlet extends HttpServlet {
    InstrumentService service =new InstrumentServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String iName =request.getParameter("iName");
        Instrument instrument=service.queryInstrumentByName(iName);
        System.out.println(iName);
        if (instrument !=null){
            request.setAttribute("instruments",instrument);
            request.getRequestDispatcher("instrument-query.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("instrument-fail.jsp").forward(request,response);
        }

    }
    }

