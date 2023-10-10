package com.atchensong.controller;

import com.atchensong.proj.Register;
import com.atchensong.utils.StaticClassUtils;

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
 * @Date: 2023/01/09 下午 05:39
 */
@WebServlet(name = "ListRegisterServlet",value = "/ListRegisterServlet")
public class ListRegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Register> list=StaticClassUtils.REGISTER_SERVICE.queryAllRegister();
        request.setAttribute("list",list);
        request.getRequestDispatcher("/register_manage.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
