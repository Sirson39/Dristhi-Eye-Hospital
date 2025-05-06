package com.dhristi.controller;

import com.dhristi.model.*;
import com.dhristi.service.LoginService;
import com.dhristi.util.CookieUtil;
import com.dhristi.util.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    private final LoginService svc = new LoginService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	req.getRequestDispatcher("/WEB-INF/pages/Public/Login.jsp")
    	   .forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String email    = req.getParameter("email");
        String password = req.getParameter("password");

        try {
            // try admin
            AdminModel admin = svc.loginAdmin(email, password);
            if (admin != null) {
                SessionUtil.setAttribute(req, "userId", admin.getAdminId());
                SessionUtil.setAttribute(req, "role",   "admin");
                CookieUtil.addCookie(resp, "role", "admin", 7*24*60*60);
                resp.sendRedirect(req.getContextPath() + "/home");
                return;
            }
            // try doctor
            DoctorModel doctor = svc.loginDoctor(email, password);
            if (doctor != null) {
                SessionUtil.setAttribute(req, "userId", doctor.getDoctorId());
                SessionUtil.setAttribute(req, "role",   "doctor");
                CookieUtil.addCookie(resp, "role", "doctor", 7*24*60*60);
                resp.sendRedirect(req.getContextPath() + "/home");
                return;
            }
            // try patient
            PatientModel patient = svc.loginPatient(email, password);
            if (patient != null) {
                SessionUtil.setAttribute(req, "userId", patient.getPatientId());
                SessionUtil.setAttribute(req, "role",   "patient");
                CookieUtil.addCookie(resp, "role", "patient", 7*24*60*60);
                resp.sendRedirect(req.getContextPath() + "/home");
                return;
            }

            // none matched
            req.setAttribute("error", "Invalid email or password");
            req.getRequestDispatcher("/pages/Public/Login.jsp")
               .forward(req, resp);

        } catch (Exception e) {
            throw new ServletException("Login error", e);
        }
    }
}
