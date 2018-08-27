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
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/phone/index")
public class PhoneList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PhoneInterface phoneDAO = new PhoneDAO();
        List<Phone> phones = phoneDAO.listAll();
        req.setAttribute("phones", phones);
        req.getRequestDispatcher("/jsp/phone_list.jsp").forward(req, resp);
    }
}
