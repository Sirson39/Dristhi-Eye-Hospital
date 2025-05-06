package com.dhristi.controller;

import com.dhristi.model.AppointmentModel;
import com.dhristi.service.AppointmentService;
import com.dhristi.util.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalTime;
import java.util.List;

/**
 * AppointmentController handles booking new appointments
 * and listing a patient’s existing appointments.
 */
@WebServlet("/appointments")
public class AppointmentController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final AppointmentService svc = new AppointmentService();

    /**
     * Handles GET requests:
     *  - ?action=list → fetches and displays this patient’s appointments
     *  - no action    → forwards to the booking form
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String action = req.getParameter("action");
        if ("list".equals(action)) {
            // Retrieve patientId from session
            Integer patientId = (Integer) SessionUtil.getAttribute(req, "userId");
            if (patientId == null) {
                resp.sendRedirect(req.getContextPath() + "/login");
                return;
            }

            try {
                List<AppointmentModel> list = svc.listByPatient(patientId);
                req.setAttribute("appointments", list);
                req.getRequestDispatcher("/pages/Patient/myappointments.jsp")
                   .forward(req, resp);
            } catch (Exception e) {
                throw new ServletException("Failed to list appointments", e);
            }
        } else {
            // Show the booking form
            req.getRequestDispatcher("/pages/Patient/bookappointment.jsp")
               .forward(req, resp);
        }
    }

    /**
     * Handles POST requests for booking a new appointment.
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            Integer patientId = (Integer) SessionUtil.getAttribute(req, "userId");
            if (patientId == null) {
                resp.sendRedirect(req.getContextPath() + "/login");
                return;
            }

            AppointmentModel a = new AppointmentModel();
            a.setPatientId(patientId);
            a.setDoctorId(Integer.parseInt(req.getParameter("doctorId")));
            a.setAppointmentDate(Date.valueOf(req.getParameter("date")));       // expects yyyy-mm-dd
            a.setAppointmentTime(LocalTime.parse(req.getParameter("time")));    // expects HH:mm
            a.setStatus("Booked");

            boolean success = svc.bookAppointment(a);
            if (!success) {
                req.setAttribute("error", "Could not book appointment. Please try again.");
                req.getRequestDispatcher("/pages/Patient/bookappointment.jsp")
                   .forward(req, resp);
                return;
            }

            // On success, redirect to the list view
            resp.sendRedirect(req.getContextPath() + "/appointments?action=list");
        } catch (Exception e) {
            req.setAttribute("error", "Error booking appointment: " + e.getMessage());
            req.getRequestDispatcher("/pages/Patient/bookappointment.jsp")
               .forward(req, resp);
        }
    }
}
