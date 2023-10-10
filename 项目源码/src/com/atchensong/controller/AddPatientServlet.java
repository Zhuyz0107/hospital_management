package com.atchensong.controller;

import com.atchensong.proj.Bed;
import com.atchensong.proj.Patient;
import com.atchensong.service.PatientService;
import com.atchensong.service.impl.PatientServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author: 赵程
 * @Date: 2023/01/08 16:38
 */

@WebServlet(name = "AddPatientServlet", value = "/AddPatientServlet")
public class AddPatientServlet extends HttpServlet{
    PatientService service=new PatientServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Patient> patients=service.queryAll();
        System.out.println(patients);
        Integer pid = Integer.valueOf(request.getParameter("pid"));
        String  pName=request.getParameter("pName");
        String  pSex=request.getParameter("pSex");
//        String  pTime=request.getParameter("pTime");
        String  pTime= String.valueOf(request.getParameter("pTime")) ;
        String  pIllness=request.getParameter("pIllness");
        String  mName=request.getParameter("mName");
        Integer bid;
        if(request.getParameter("bid")!=""){
            bid = Integer.valueOf(request.getParameter("bid"));
            service.addPatient(new Patient(pid,pName,pSex,pTime,pIllness,mName,bid));
            request.getRequestDispatcher("/patient-add.jsp").forward(request,response);
        }else{
            service.addPatient(new Patient(pid,pName,pSex,pTime,pIllness,mName));
            request.getRequestDispatcher("/patient-add.jsp").forward(request,response);
        }
    }
}
