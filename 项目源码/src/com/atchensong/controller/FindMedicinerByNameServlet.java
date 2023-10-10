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

@WebServlet(name = "FindMedicinerByNameServlet",value = "/FindMedicinerByNameServlet")
public class FindMedicinerByNameServlet extends HttpServlet {
    MedicinerService service=new MedicinerServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String mid=request.getParameter("mid");
        Mediciner mediciner=service.queryMedicinerById(Integer.valueOf(mid));
       /* String mName=request.getParameter("mName");
        Mediciner mediciner=service.queryMedicinerByName(mName);*/
        System.out.println(mediciner);
        if(mediciner!=null){
            request.setAttribute("mediciner",mediciner);
            request.getRequestDispatcher("mediciner-query.jsp").forward(request,response);
        }else {
            request.getRequestDispatcher("mediciner-failfind.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
