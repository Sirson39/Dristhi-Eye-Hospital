package com.dhristi.controller;

import com.dhristi.model.AppointmentModel;
import com.dhristi.service.AppointmentService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

<<<<<<< HEAD
@WebServlet("/Admin/appointments")
=======
<<<<<<< HEAD
@WebServlet("/Admin/appointments")
=======
@WebServlet("/Admin/appointments") // ✅ Matches your sidebar link
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
public class AppointmentController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final AppointmentService svc = new AppointmentService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

<<<<<<< HEAD
        HttpSession session = request.getSession(false);
        if (session == null || !"doctor".equalsIgnoreCase((String) session.getAttribute("userRole"))) {
=======
<<<<<<< HEAD
        HttpSession session = request.getSession(false);
        if (session == null || !"doctor".equalsIgnoreCase((String) session.getAttribute("userRole"))) {
=======
        System.out.println("📥 /Admin/appointments hit");

        HttpSession session = request.getSession(false);
        System.out.println("🔍 session = " + session);

        if (session == null) {
            System.out.println("❌ No session. Redirecting to login.");
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
        String search = request.getParameter("search");
        String fromDate = request.getParameter("fromDate");
        String toDate = request.getParameter("toDate");

        try {
           
            List<AppointmentModel> appointments = svc.getFilteredAppointments(search, fromDate, toDate);
            request.setAttribute("appointments", appointments);
            request.getRequestDispatcher("/WEB-INF/pages/Admin/Appointment.jsp").forward(request, response);
<<<<<<< HEAD
=======
=======
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

>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Failed to load appointments", e);
        }
    }
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        int appointmentId = Integer.parseInt(request.getParameter("appointmentId"));

        if ("updateStatus".equals(action)) {
            String newStatus = request.getParameter("status");
            svc.updateAppointmentStatus(appointmentId, newStatus);
        } else if ("cancel".equals(action)) {
            svc.cancelAppointment(appointmentId);
        }

        response.sendRedirect(request.getContextPath() + "/Admin/appointments");
    }
<<<<<<< HEAD
=======
=======
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
}
