package com.dhristi.controller;

import com.dhristi.model.AppointmentModel;
import com.dhristi.service.AppointmentService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/DoctorDashboard")
public class DoctorDashboradController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AppointmentService appointmentService = new AppointmentService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Retrieve data from database
        int totalPatients = appointmentService.getTotalPatients();
        int todaysPatients = appointmentService.getTodaysPatients();
        int todaysAppointments = appointmentService.getTodaysAppointments();
        int pendingRecords = appointmentService.getPendingRecords();

        List<AppointmentModel> todaysAppointmentsList = appointmentService.getTodaysAppointmentsList();
        List<AppointmentModel> appointmentRequests = appointmentService.getPendingAppointmentRequests();
        
        AppointmentModel nextPatient = appointmentService.getNextPatient();

        // Pass to JSP
        request.setAttribute("totalPatients", totalPatients);
        request.setAttribute("todaysPatients", todaysPatients);
        request.setAttribute("todaysAppointments", todaysAppointments);
        request.setAttribute("pendingRecords", pendingRecords);
        request.setAttribute("todaysAppointmentsList", todaysAppointmentsList);
        request.setAttribute("nextPatient", nextPatient);
        request.setAttribute("appointmentRequests", appointmentRequests);

        request.getRequestDispatcher("/WEB-INF/pages/Admin/DoctorDashboard.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
