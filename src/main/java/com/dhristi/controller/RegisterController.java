package com.dhristi.controller;

import com.dhristi.model.PatientModel;
import com.dhristi.service.RegisterService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/signin")
public class RegisterController extends HttpServlet {
    private final RegisterService svc = new RegisterService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	req.getRequestDispatcher("/WEB-INF/pages/Public/Signin.jsp")
    	   .forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            PatientModel p = new PatientModel();
            p.setName(req.getParameter("name"));
            p.setDob(java.sql.Date.valueOf(req.getParameter("dob")));
            p.setGender(req.getParameter("gender"));
            p.setEmail(req.getParameter("email"));
            p.setPhone(req.getParameter("phone"));
            p.setAddress(req.getParameter("address"));
            p.setPasswordHash(req.getParameter("password"));

            boolean ok = svc.registerPatient(p);
            if (ok) {
                req.setAttribute("message", "Registration successful. Please log in.");
                req.getRequestDispatcher("/pages/Public/Login.jsp")
                   .forward(req, resp);
            } else {
                req.setAttribute("error", "Registration failed. Try again.");
                req.getRequestDispatcher("/pages/Public/Signin.jsp")
                   .forward(req, resp);
            }
        } catch (Exception e) {
            throw new ServletException("Registration error", e);
        }
    }
}
