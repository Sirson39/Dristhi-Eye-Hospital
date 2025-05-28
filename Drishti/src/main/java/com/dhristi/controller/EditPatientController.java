package com.dhristi.controller;

import com.dhristi.model.UserModel;
import com.dhristi.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/edit-patient")
public class EditPatientController extends HttpServlet {
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userId = Integer.parseInt(req.getParameter("id"));
        UserModel patient = userService.getUserById(userId);

        req.setAttribute("patient", patient);
        req.getRequestDispatcher("/WEB-INF/pages/Admin/EditPatient.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userId = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");

        UserModel updated = new UserModel();
        updated.setUserId(userId);
        updated.setName(name);
        updated.setEmail(email);
        updated.setPhoneNumber(phone);

        userService.updatePatient(updated);

        resp.sendRedirect(req.getContextPath() + "/manage-patients");
    }
}