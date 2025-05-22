 package com.dhristi.controller;

import com.dhristi.model.UserModel;
import com.dhristi.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/manage-patients")
public class ManagePatientController extends HttpServlet {

    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Fetch all users with role = patient
        List<UserModel> patients = userService.getAllPatients();

        // Set patient list as request attribute
        request.setAttribute("patients", patients);

        // Forward to JSP
        request.getRequestDispatcher("/WEB-INF/pages/Admin/ManagePatient.jsp")
               .forward(request, response);
    }
}
