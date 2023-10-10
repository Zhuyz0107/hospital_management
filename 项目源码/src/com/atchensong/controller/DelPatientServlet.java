package com.atchensong.controller;

import com.atchensong.service.PatientService;
import com.atchensong.service.impl.PatientServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

/**
 * @author: 赵程
 * @Date: 2023/01/08 20:00
 */
@WebServlet(name = "DelPatientServlet", value = "/DelPatientServlet")
public class DelPatientServlet extends HttpServlet {
    PatientService service=new PatientServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid=request.getParameter("pid");
        service.delPatientById(Integer.valueOf(pid));
        response.sendRedirect(request.getContextPath()+"/ListPatientServlet");
    }
}
