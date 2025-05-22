package com.dhristi.controller;

import com.dhristi.model.AppointmentModel;
import com.dhristi.service.AppointmentService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/Admin/appointments") // ✅ Matches your sidebar link
public class AppointmentController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final AppointmentService svc = new AppointmentService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("📥 /Admin/appointments hit");

        HttpSession session = request.getSession(false);
        System.out.println("🔍 session = " + session);

        if (session == null) {
            System.out.println("❌ No session. Redirecting to login.");
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        String role = (String) session.getAttribute("userRole");
        System.out.println("🔍 userRole = " + role);

        if (role == null || !role.equalsIgnoreCase("doctor")) {
            System.out.println("❌ Unauthorized role. Redirecting to login.");
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        try {
            List<AppointmentModel> appointments = svc.getAllAppointments();
            request.setAttribute("appointments", appointments);
            System.out.println("✅ Appointments fetched. Forwarding to JSP.");
            request.getRequestDispatcher("/WEB-INF/pages/Admin/Appointment.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Failed to load appointments", e);
        }
    }
}
