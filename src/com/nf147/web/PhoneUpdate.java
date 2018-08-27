package com.nf147.web;

import com.google.gson.Gson;
import com.nf147.dao.PhoneDAO;
import com.nf147.entity.Phone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/phone/update")
public class PhoneUpdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        PhoneDAO dao = new PhoneDAO();
        Phone phone = dao.getPhoneById(Integer.parseInt(req.getParameter("id")));
        Gson gson = new Gson();
        resp.getWriter().print(gson.toJson(phone));
}

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        float price = Float.parseFloat(req.getParameter("price"));
        String brand = req.getParameter("brand");
        String firm = req.getParameter("firm");

        PhoneDAO dao = new PhoneDAO();
        dao.update(new Phone(id,name,price,brand,firm));

        resp.sendRedirect("/phone/index");
    }
}
