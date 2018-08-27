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
import java.util.List;

@WebServlet(value = "/phone/q")
public class PhoneSearch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        String condition = req.getParameter("condition");

        PhoneInterface phoneInterface = new PhoneDAO();
        List<Phone> phones=phoneInterface.getPhoneByName(condition);

        req.setAttribute("phones",phones);

        req.getRequestDispatcher("/jsp/phone_list.jsp").include(req,resp);

    }
}
