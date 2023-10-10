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
import java.util.List;


@WebServlet(name = "FindDepNameServlet1", value = "/FindDepNameServlet1")
public class FindDepNameServlet1 extends HttpServlet{
    MedicinerService service=new MedicinerServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Mediciner> medicinersss = service.queryAll();
        System.out.println(medicinersss);
        request.setAttribute("medicinersss", medicinersss);
        request.getRequestDispatcher("GetMedicinerServlet").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

