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

@WebServlet(name = "GetMedicinerServlet",value = "/GetMedicinerServlet")
public class GetMedicinerServlet extends HttpServlet {
    MedicinerService service=new MedicinerServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mid= request.getParameter("mid");
        Mediciner mediciner=service.queryMedicinerById(Integer.valueOf(mid));
        request.setAttribute("mediciner",mediciner);
        request.getRequestDispatcher("mediciner-update.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
