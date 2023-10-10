package com.atchensong.controller;

import com.atchensong.proj.Patient;
import com.atchensong.service.PatientService;
import com.atchensong.service.impl.PatientServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
/**
 * @author: 赵程
 * @Date: 2023/01/08 15:45
 */
@WebServlet(name = "ListPatientServlet", value = "/ListPatientServlet")
public class ListPatientServlet extends HttpServlet{
    PatientService service=new PatientServiceImpl();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Patient> patients=service.queryAll();
        System.out.println(patients);
        request.setAttribute("patients",patients);
        request.getRequestDispatcher("/patient-manage.jsp").forward(request,response);
    }
}
