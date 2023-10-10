package com.atchensong.controller;

import com.atchensong.proj.Bed;
import com.atchensong.proj.Patient;
import com.atchensong.service.PatientService;
import com.atchensong.service.impl.PatientServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
/**
 * @author: 赵程
 * @Date: 2023/01/09 10:04
 */
@WebServlet(name = "FindPatientInfoServlet", value = "/FindPatientInfoServlet")
public class FindPatientInfoServlet  extends HttpServlet{
    PatientService service=new PatientServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid=request.getParameter("pid");
        Patient patient=service.queryPatientByIdInfo(Integer.valueOf(pid));
        System.out.println(patient);
        if (patient !=null){
            request.setAttribute("patient",patient);
            request.getRequestDispatcher("patient-query.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("patient-querynull.jsp").forward(request,response);
        }
    }
}
