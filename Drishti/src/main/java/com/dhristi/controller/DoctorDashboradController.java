package com.dhristi.controller;

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
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
<<<<<<< HEAD
=======
=======
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class DoctorDashboradController
 */
@WebServlet("/DoctorDashboard")
public class DoctorDashboradController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorDashboradController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/pages/Admin/DoctorDashboard.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
}
