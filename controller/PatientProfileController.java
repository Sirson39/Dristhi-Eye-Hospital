package com.dhristi.controller;

import com.dhristi.model.PatientModel;
import com.dhristi.service.PatientService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/Patient/UpdateProfile")
public class PatientProfileController extends HttpServlet {

    private final PatientService service = new PatientService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        PatientModel patient = (PatientModel) session.getAttribute("loggedUser");

        try {
            // ✅ Get form values
            patient.setName(request.getParameter("name"));
            patient.setEmail(request.getParameter("email"));
            patient.setPhone(request.getParameter("phoneNumber"));
            patient.setGender(request.getParameter("gender"));
            patient.setAddress(request.getParameter("address"));
            patient.setBloodGroup(request.getParameter("bloodGroup"));
            patient.setAge(Integer.parseInt(request.getParameter("age"))); // ✅ set age

            // ✅ Update the patient via service
            boolean updated = service.updatePatientProfile(patient);
            if (updated) {
                session.setAttribute("loggedUser", patient); // refresh session with updated data
            }

            response.sendRedirect(request.getContextPath() + "/Patient/profile");
        } catch (Exception e) {
            throw new ServletException("Failed to update profile", e);
        }
    }
}
