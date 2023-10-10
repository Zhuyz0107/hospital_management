package com.atchensong.controller;



import com.atchensong.service.RemedyService;
import com.atchensong.service.impl.RemedyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "delRemedyServlet", value = "/delRemedyServlet")
public class delRemedyServlet extends HttpServlet {
    RemedyService service =new RemedyServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String rId=request.getParameter("rId");
        service.delRemedyById(Integer.valueOf(rId));
        response.sendRedirect(request.getContextPath()+"/ListRemedyServlet");
    }
}
