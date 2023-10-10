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

@WebServlet(name = "UpdateRemedyServlet", value = "/UpdateRemedyServlet")
public class UpdateRemedyServlet extends HttpServlet {
    RemedyService service =new RemedyServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer  rId =Integer.valueOf(request.getParameter("rId")) ;
        String  rName=request.getParameter("rName");
        String  rPrice=request.getParameter("rPrice");
        Integer rNum=Integer.parseInt(request.getParameter("rNum"));
        String  rRemark=request.getParameter("rRemark");

        Remedy remedy= new Remedy(rId,rName,rPrice,rNum,rRemark);
        service.UpdateRemedy(remedy);
        response.sendRedirect(request.getContextPath()+"/ListRemedyServlet");
    }
}
