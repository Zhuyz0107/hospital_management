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


@WebServlet(name = "UpdateInstrumentServlet", value = "/UpdateInstrumentServlet")
public class UpdateInstrumentServlet extends HttpServlet {
    InstrumentService service =new InstrumentServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer  iId =Integer.valueOf(request.getParameter("iId")) ;
        String  iName=request.getParameter("iName");
        String  iPrice=request.getParameter("iPrice");
        Integer iNum=Integer.parseInt(request.getParameter("iNum"));
        String  iRemark=request.getParameter("iRemark");
        String  iState=request.getParameter("iState");
        Instrument instrument=new Instrument(iId,iName,iPrice,iNum,iRemark,iState);

        service.UpdateInstrument(instrument);
        response.sendRedirect(request.getContextPath()+"/ListServlet1");
    }
}
