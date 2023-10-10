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

/**
 * @author: 赵程
 * @Date: 2023/01/09 10:58
 */
@WebServlet(name = "UpdatePatientServlet", value = "/UpdatePatientServlet")
public class UpdatePatientServlet extends HttpServlet {
    PatientService service=new PatientServiceImpl();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer pid=Integer.parseInt(request.getParameter("pid"));
        String pName=request.getParameter("pName");
        String pSex=request.getParameter("pSex");
        String pTime=request.getParameter("pTime");
        String pIllness=request.getParameter("pIllness");
        String mName=request.getParameter("mName");
        Integer bid=Integer.parseInt(request.getParameter("bid"));
        Patient patient=new Patient(pid,pName,pSex,pTime,pIllness,mName,bid);
        service.UpdatePatient(patient);
        request.getRequestDispatcher("/patient-edit.jsp").forward(request,response);
    }
}
