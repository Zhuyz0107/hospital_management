package com.atchensong.controller;

import com.atchensong.proj.Remedy;
import com.atchensong.service.RemedyService;
import com.atchensong.service.impl.RemedyServiceImpl;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "AddRemedyServlet", value = "/AddRemedyServlet")
public class AddRemedyServlet extends HttpServlet {
    RemedyService service =new RemedyServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer rId = Integer.valueOf(request.getParameter("rId"));
        String  rName=request.getParameter("rName");
        String  rPrice=request.getParameter("rPrice");
        Integer rNum=Integer.parseInt(request.getParameter("rNum"));
        String  rRemark=request.getParameter("rRemark");
        service.addRemedy(new Remedy(rId,rName,rPrice,rNum,rRemark));
        response.sendRedirect(request.getContextPath()+"/ListRemedyServlet");
    }
}
