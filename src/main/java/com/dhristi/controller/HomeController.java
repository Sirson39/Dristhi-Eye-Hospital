package com.dhristi.controller;

import com.dhristi.util.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Integer userId = (Integer) SessionUtil.getAttribute(req, "userId");
        if (userId == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        String role = (String) SessionUtil.getAttribute(req, "role");
        String target;
        switch (role) {
            case "admin":   target = "/pages/Admin/Drishti.jsp";        break;
            case "doctor":  target = "/pages/Doctor/DoctorDashboard.jsp"; break;
            default:        target = "/pages/Patient/dashboard.jsp";     break;
        }
        req.getRequestDispatcher(target).forward(req, resp);
    }
}
