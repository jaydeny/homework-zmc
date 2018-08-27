package com.nf147.web;

import com.nf147.dao.PhoneDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/phone/del")
public class PhoneDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        PhoneDAO dao = new PhoneDAO();
        dao.delete(id);
        resp.sendRedirect("/phone/index");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String[] ids = req.getParameterValues("id");
        PhoneDAO dao = new PhoneDAO();
        for (String id : ids) {
            dao.delete(Integer.parseInt(id));
        }
        resp.sendRedirect("/phone/index");
    }
}
