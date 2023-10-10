package com.atchensong.controller;

import com.atchensong.proj.Mediciner;
import com.atchensong.service.MedicinerService;
import com.atchensong.service.impl.MedicinerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateMedicinerServlet",value = "/UpdateMedicinerServlet")
public class UpdateMedicinerServlet extends HttpServlet {
    MedicinerService service=new MedicinerServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer mid=Integer.parseInt(request.getParameter("mid"));
        String mName=request.getParameter("mName");
        String mSex=request.getParameter("mSex");
//        Integer did=Integer.parseInt(request.getParameter("did"));
        String dName=request.getParameter("dName");
        String mStatus=request.getParameter("mStatus");
        String mAge=request.getParameter("mAge");
        String mPhone=request.getParameter("mPhone");
        Mediciner mediciner=new Mediciner(mid,mName,mSex,mStatus,mAge,mPhone,dName);
        service.UpdateMediciner(mediciner);
       response.sendRedirect(request.getContextPath()+"/ListMedicineServlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
