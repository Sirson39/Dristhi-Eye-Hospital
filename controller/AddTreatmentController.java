package com.dhristi.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/Admin/add-treatment")
public class AddTreatmentController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("➡️ /add-treatment HIT");

        HttpSession session = request.getSession(false);
        System.out.println("🔍 Session = " + session);

        if (session != null) {
            Object role = session.getAttribute("userRole");
            System.out.println("🔍 userRole = " + role);
        }

        if (session == null || !"doctor".equalsIgnoreCase((String) session.getAttribute("userRole"))) {
            System.out.println("❌ Redirecting to login");
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        System.out.println("✅ Role valid. Loading page.");
        request.getRequestDispatcher("/WEB-INF/pages/Admin/AddTreatment.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
