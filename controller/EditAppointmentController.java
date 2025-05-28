package com.dhristi.controller;

import com.dhristi.model.AppointmentModel;
import com.dhristi.service.AppointmentService;
import com.dhristi.util.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/appointment")
public class EditAppointmentController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final AppointmentService svc = new AppointmentService();


    public EditAppointmentController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String role = (String) SessionUtil.getAttribute(request, "userRole");
        if (role == null || !"doctor".equalsIgnoreCase(role)) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        try {
            List<AppointmentModel> appointments = svc.getAllAppointments();
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
        doGet(request, response);
    }
}
