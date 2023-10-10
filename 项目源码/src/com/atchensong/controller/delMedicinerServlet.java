package com.atchensong.controller;

import com.atchensong.service.MedicinerService;
import com.atchensong.service.impl.MedicinerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "delMedicinerServlet", value = "/delMedicinerServlet")
public class delMedicinerServlet extends HttpServlet {
    MedicinerService service = new MedicinerServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mid = request.getParameter("mid");
        service.delMediciner(Integer.valueOf(mid));
        response.sendRedirect(request.getContextPath() + "/ListMedicineServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
