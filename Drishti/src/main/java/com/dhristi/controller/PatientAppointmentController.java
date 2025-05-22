package com.dhristi.controller;

import com.dhristi.model.AppointmentModel;
import com.dhristi.model.PatientModel;
import com.dhristi.service.AppointmentService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/Patient/myappointment")
public class PatientAppointmentController extends HttpServlet {

    private final AppointmentService appointmentService = new AppointmentService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        PatientModel user = (PatientModel) session.getAttribute("loggedUser");

        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        try {
            List<AppointmentModel> appointments = appointmentService.getAppointmentsByUserId(user.getPatientId());
            req.setAttribute("appointments", appointments);
            req.getRequestDispatcher("/WEB-INF/pages/Patient/myappointment.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Unable to load appointments.");
            req.getRequestDispatcher("/WEB-INF/pages/Patient/myappointment.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        PatientModel user = (PatientModel) session.getAttribute("loggedUser");

        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        String appointmentIdStr = req.getParameter("appointmentId");

        if (appointmentIdStr != null) {
            try {
                int appointmentId = Integer.parseInt(appointmentIdStr);
                appointmentService.cancelAppointment(appointmentId);
                resp.sendRedirect(req.getContextPath() + "/Patient/myappointment");
            } catch (NumberFormatException e) {
                e.printStackTrace();
                resp.sendRedirect(req.getContextPath() + "/Patient/myappointment?error=invalidId");
            }
        } else {
            resp.sendRedirect(req.getContextPath() + "/Patient/myappointment?error=missingId");
        }
    }

}
