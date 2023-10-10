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


@WebServlet(name = "FindDepNameServlet", value = "/FindDepNameServlet")
public class FindDepNameServlet extends HttpServlet{
    MedicinerService service=new MedicinerServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Mediciner> medicinerss = service.queryAll();
        System.out.println(medicinerss);
        request.setAttribute("medicinerss", medicinerss);
        request.getRequestDispatcher("/order-add.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
