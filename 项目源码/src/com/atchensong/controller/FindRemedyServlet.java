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

@WebServlet(name = "FindRemedyServlet", value = "/FindRemedyServlet")
public class FindRemedyServlet extends HttpServlet {
    RemedyService service =new RemedyServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String rName =request.getParameter("rName");
        Remedy remedy=service.queryRemedyByName(rName);
        System.out.println(rName);
        if (remedy !=null){
            request.setAttribute("remedies",remedy);
            request.getRequestDispatcher("remedy-query.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("remedy-fail.jsp").forward(request,response);
        }

    }
}
