package com.dhristi.controller;

import com.dhristi.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/delete-patient")
public class DeletePatientController extends HttpServlet {
    private final UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userId = Integer.parseInt(req.getParameter("id"));

        // Only delete if the user is a patient
        userService.deleteUserById(userId);

        // Redirect back to Manage Patients
        resp.sendRedirect(req.getContextPath() + "/manage-patients");
    }
}
