package com.atchensong.controller;

import com.atchensong.proj.Register;
import com.atchensong.utils.DateUtils;
import com.atchensong.utils.StaticClassUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;

/**
 * @className: ${NAME}.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/08 下午 05:59
 */
@WebServlet(name = "AddRegisterServlet", value = "/AddRegisterServlet")
public class AddRegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String rname = request.getParameter("name");
        Integer rage = Integer.valueOf(request.getParameter("age"));
        String dName = request.getParameter("department");
        String dResponsible = request.getParameter("doctor");
        java.sql.Date date = null;
        String d = request.getParameter("date");
        try {
            date = DateUtils.stringToSqlDate(d);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String problem = request.getParameter("problem");
        String rgender = request.getParameter("gender");
        Register register = new Register(rname, rgender, rage, date, problem, dName, dResponsible);
        int result=StaticClassUtils.REGISTER_SERVICE.addRegister(register);
        if (result!=-1){
            System.out.println("插入挂号单成功！");
            response.sendRedirect(request.getContextPath()+"/register_success.jsp");
        }else {
            System.out.println("出错");
            System.exit(0);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
