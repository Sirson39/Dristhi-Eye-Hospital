package com.dhristi.controller;

import com.dhristi.model.AppointmentModel;
import com.dhristi.service.AppointmentService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/Admin/appointments")
public class AppointmentController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final AppointmentService svc = new AppointmentService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || !"doctor".equalsIgnoreCase((String) session.getAttribute("userRole"))) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        String search = request.getParameter("search");
        String fromDate = request.getParameter("fromDate");
        String toDate = request.getParameter("toDate");

        try {
           
            List<AppointmentModel> appointments = svc.getFilteredAppointments(search, fromDate, toDate);
            request.setAttribute("appointments", appointments);
            request.getRequestDispatcher("/WEB-INF/pages/Admin/Appointment.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Failed to load appointments", e);
        }
    }


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
}
