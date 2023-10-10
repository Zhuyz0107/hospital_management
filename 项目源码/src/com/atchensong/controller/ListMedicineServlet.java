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

/**
 * @className: ${NAME}.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/11 下午 04:36
 */
@WebServlet(name = "ListMedicineServlet", value = "/ListMedicineServlet")
public class ListMedicineServlet extends HttpServlet {
    MedicinerService service = new MedicinerServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Mediciner> mediciners = service.queryAll();
        System.out.println(mediciners);
        request.setAttribute("mediciners", mediciners);
        request.getRequestDispatcher("/order-list.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
