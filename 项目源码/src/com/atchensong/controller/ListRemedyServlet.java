package com.atchensong.controller;

import com.atchensong.proj.Remedy;
import com.atchensong.service.RemedyService;
import com.atchensong.service.impl.RemedyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @className: ${NAME}.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/11 下午 08:40
 */
@WebServlet(name = "ListRemedyServlet", value = "/ListRemedyServlet")
public class ListRemedyServlet extends HttpServlet {
    RemedyService service = new RemedyServiceImpl();


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Remedy> remedies = service.queryAll();
        System.out.println(remedies);
        request.setAttribute("remedies", remedies);
        request.getRequestDispatcher("/remedy-manage.jsp").forward(request, response);

    }
}
