package com.dhristi.controller;

import com.dhristi.model.AppointmentModel;
import com.dhristi.model.PatientModel;
import com.dhristi.model.UserModel;
import com.dhristi.service.AppointmentService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.time.LocalDate;

/**
 * Handles patient appointment booking requests.
 */
@WebServlet("/Patient/BookAppointment")
public class PatientBookAppointmentController extends HttpServlet {

    private final AppointmentService appointmentService = new AppointmentService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // When user visits the page
        req.getRequestDispatcher("/WEB-INF/pages/Patient/bookappointment.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        PatientModel user = (PatientModel) session.getAttribute("loggedUser");

        String date = req.getParameter("date");
        String reason = req.getParameter("reason");

        if (user != null && date != null && reason != null && !date.isEmpty() && !reason.isEmpty()) {
            LocalDate selectedDate = LocalDate.parse(date);
            LocalDate today = LocalDate.now();

            if (selectedDate.isBefore(today)) {
                resp.sendRedirect(req.getContextPath() + "/Patient/BookAppointment?past=1");
                return;
            }

            AppointmentModel appt = new AppointmentModel();
            appt.setAppointmentDate(date);
            appt.setAppointmentReason(reason);
            appt.setAppointmentStatus("Pending");
            appt.setPatientName(user.getName());
            appt.setDept("General");

            boolean success = appointmentService.bookAppointment(appt, user.getPatientId());

            if (success) {
                resp.sendRedirect(req.getContextPath() + "/Patient/BookAppointment?success=1");
            } else {
                resp.sendRedirect(req.getContextPath() + "/Patient/BookAppointment?error=1");
            }
        } else {
            resp.sendRedirect(req.getContextPath() + "/Patient/BookAppointment?error=1");
        }
    }
}
