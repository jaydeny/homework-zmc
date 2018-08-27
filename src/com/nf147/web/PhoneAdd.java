package com.nf147.web;

import com.nf147.dao.PhoneDAO;
import com.nf147.dao.PhoneInterface;
import com.nf147.entity.Phone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/phone/add")
public class PhoneAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/jsp/phone_add.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        float price = Float.parseFloat(req.getParameter("price"));
        String brand = req.getParameter("brand");
        String firm = req.getParameter("firm");

        PhoneInterface phoneDB = new PhoneDAO();
        phoneDB.add(new Phone(id,name,price,brand,firm));

        resp.sendRedirect("/phone/index");
    }
}
