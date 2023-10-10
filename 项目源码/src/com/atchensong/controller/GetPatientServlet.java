package com.atchensong.controller;

import com.atchensong.proj.Bed;
import com.atchensong.proj.Patient;
import com.atchensong.service.BedService;
import com.atchensong.service.PatientService;
import com.atchensong.service.impl.BedServiceImpl;
import com.atchensong.service.impl.PatientServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

/**
 * @author: 赵程
 * @Date: 2023/01/09 11:22
 */

@WebServlet(name = "GetPatientServlet", value = "/GetPatientServlet")
public class GetPatientServlet extends HttpServlet{
    PatientService service=new PatientServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //测试
        List<Patient> patientss=service.queryMem();
        System.out.println(patientss);
        request.setAttribute("patientss",patientss);

        String pid=request.getParameter("pid");
        Patient patient=service.queryPatientById(Integer.valueOf(pid));
        String str=patient.getmName();
        request.setAttribute("patient",patient);
        request.getRequestDispatcher("patient-edit.jsp").forward(request,response);
    }
}
