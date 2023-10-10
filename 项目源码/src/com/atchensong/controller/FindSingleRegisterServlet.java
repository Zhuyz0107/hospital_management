package com.atchensong.controller;

import com.atchensong.proj.Register;
import com.atchensong.utils.StaticClassUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @className: ${NAME}.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/11 下午 04:07
 */
@WebServlet(name = "FindSingleRegisterServlet", value = "/FindSingleRegisterServlet")
public class FindSingleRegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Register register = StaticClassUtils.REGISTER_SERVICE.queryRegisterById(id);
        HttpSession session = request.getSession();
        session.setAttribute("id", id);
        request.setAttribute("register", register);
        request.getRequestDispatcher("/register_show.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
