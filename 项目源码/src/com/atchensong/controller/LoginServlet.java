package com.atchensong.controller;


import com.atchensong.proj.Manager;
import com.atchensong.service.ManagerService;
import com.atchensong.service.impl.ManagerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet",value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    ManagerService service = new ManagerServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        Manager login = service.login(new Manager(account,password));
        if (login==null){
            request.setAttribute("msg","用户名或密码输入错误");
            request.setAttribute("account",account);
            request.getRequestDispatcher("login.jsp").forward(request,response);
            System.out.println("登陆失败");
        }else{
            System.out.println("登陆成功");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }

    }


}
