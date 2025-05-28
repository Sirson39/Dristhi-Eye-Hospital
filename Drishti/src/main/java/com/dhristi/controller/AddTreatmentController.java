package com.dhristi.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
import java.util.ArrayList;
import java.util.List;

import com.dhristi.model.MedicationModel;
import com.dhristi.model.PatientModel;
import com.dhristi.model.TreatmentModel;
import com.dhristi.service.PatientService;
import com.dhristi.service.TreatmentService;

@WebServlet("/Admin/add-treatment")
public class AddTreatmentController extends HttpServlet {

    // Handle GET request: Show the AddTreatment form with patient info
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String patientIdParam = request.getParameter("userId");
        if (patientIdParam != null && !patientIdParam.trim().isEmpty()) {
            try {
                // Lookup patient from database (assuming patientId is an int)
                int patientId = Integer.parseInt(patientIdParam);

                // Example: Call PatientService to get patient by ID
                PatientService patientService = new PatientService();
                PatientModel patient = patientService.getPatientById(patientId);

                if (patient != null) {
                    request.setAttribute("patient", patient);
                } else {
                    request.setAttribute("error", "No patient found with this ID.");
                }

            } catch (NumberFormatException e) {
                request.setAttribute("error", "Invalid Patient ID.");
            } catch (Exception e) {
                request.setAttribute("error", "Error: " + e.getMessage());
            }
        }

        // Forward to JSP to display the form (with or without patient data)
        request.getRequestDispatcher("/WEB-INF/pages/Admin/AddTreatment.jsp").forward(request, response);
    }


    // Handle POST request: Save treatment details
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || !"doctor".equalsIgnoreCase((String) session.getAttribute("userRole"))) {
<<<<<<< HEAD
=======
=======

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
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
        int userId = Integer.parseInt(request.getParameter("userId")); // Assuming patient ID
        String diagnosis = request.getParameter("diagnosis");
        String testRecommendations = request.getParameter("testRecommendations");

        // Handle checkboxes for prescribed treatment type
        String[] treatmentTypes = request.getParameterValues("prescribedTreatmentType");
        String treatmentTypesStr = (treatmentTypes != null) ? String.join(",", treatmentTypes) : "";

        // Parse medications
        String[] medNames = request.getParameterValues("medicineName");
        String[] medDosages = request.getParameterValues("medicineDosage");
        String[] medDurations = request.getParameterValues("mediDuration");
        String[] medInstructions = request.getParameterValues("medInstruction");

        List<MedicationModel> meds = new ArrayList<>();
        if (medNames != null) {
            for (int i = 0; i < medNames.length; i++) {
                MedicationModel med = new MedicationModel();
                med.setMedicineName(medNames[i]);
                med.setMedicineDosage(medDosages[i]);
                med.setMediDuration(medDurations[i]);
                med.setMedInstruction(medInstructions[i]);
                meds.add(med);
            }
        }

        // Prepare the TreatmentModel
        TreatmentModel treatment = new TreatmentModel();
        treatment.setDiagnosisConditionTreated(diagnosis);
        treatment.setTestRecommendations(testRecommendations);
        treatment.setPrescribedTreatmentType(treatmentTypesStr);
        treatment.setMedications(meds);

        try {
            TreatmentService treatmentService = new TreatmentService();
            boolean ok = treatmentService.addTreatmentForUser(userId, treatment);

            if (ok) {
                response.sendRedirect(request.getContextPath() + "/DoctorDashboard");
            } else {
                request.setAttribute("error", "Failed to save treatment.");
                request.getRequestDispatcher("/WEB-INF/pages/Admin/AddTreatment.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/pages/Admin/AddTreatment.jsp").forward(request, response);
        }
<<<<<<< HEAD
=======
=======
        System.out.println("✅ Role valid. Loading page.");
        request.getRequestDispatcher("/WEB-INF/pages/Admin/AddTreatment.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
    }
}
