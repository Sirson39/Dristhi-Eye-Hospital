package com.dhristi.controller;

import com.dhristi.model.TreatmentModel;
import com.dhristi.service.TreatmentService;
import com.dhristi.util.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
import java.util.List;
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04

@WebServlet("/treatments")
public class TreatmentController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final TreatmentService svc = new TreatmentService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        String role = (String) SessionUtil.getAttribute(req, "userRole");

        if (session == null || !"doctor".equalsIgnoreCase(role)) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        String action = req.getParameter("action");
        String apptIdParam = req.getParameter("appointmentId");

        if ("list".equalsIgnoreCase(action) && apptIdParam != null) {
            try {
                int apptId = Integer.parseInt(apptIdParam);
<<<<<<< HEAD
                req.setAttribute("treatments", svc.getByAppointment(apptId));
=======
<<<<<<< HEAD
                req.setAttribute("treatments", svc.getByAppointment(apptId));
=======
                List<TreatmentModel> list = svc.getByAppointment(apptId);
                req.setAttribute("treatments", list);
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
                req.getRequestDispatcher("/WEB-INF/pages/Doctor/viewtreatments.jsp").forward(req, resp);
            } catch (Exception e) {
                throw new ServletException("Failed to list treatments", e);
            }
        } else {
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
            // Show the add-treatment form
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
            req.getRequestDispatcher("/WEB-INF/pages/Admin/AddTreatment.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        String role = (String) SessionUtil.getAttribute(req, "userRole");

        if (session == null || !"doctor".equalsIgnoreCase(role)) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        try {
<<<<<<< HEAD
            // Get the logged-in doctor's userId
            Integer userId = (Integer) SessionUtil.getAttribute(req, "userId");
            if (userId == null) {
=======
<<<<<<< HEAD
            // Get the logged-in doctor's userId
            Integer userId = (Integer) SessionUtil.getAttribute(req, "userId");
            if (userId == null) {
=======
            // Validate session again
            Integer doctorId = (Integer) SessionUtil.getAttribute(req, "userId");
            if (doctorId == null) {
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
                resp.sendRedirect(req.getContextPath() + "/login");
                return;
            }

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
            // Create treatment model from request
            TreatmentModel t = new TreatmentModel();
            t.setAppointmentId(Integer.parseInt(req.getParameter("appointmentId")));
            t.setDiagnosis(req.getParameter("diagnosis"));
            t.setPrescription(req.getParameter("prescription"));

            // Save treatment with doctor (user) ID
            boolean ok = svc.addTreatmentForUser(userId, t);
<<<<<<< HEAD
=======
=======
            TreatmentModel t = new TreatmentModel();
            t.setAppointmentId(Integer.parseInt(req.getParameter("appointmentId")));
            t.setDiagnosis(req.getParameter("diagnosis"));
            t.setTreatmentNotes(req.getParameter("notes"));
            t.setPrescription(req.getParameter("prescription"));

            String sd = req.getParameter("surgeryDate");
            if (sd != null && !sd.isEmpty()) {
                t.setSurgeryDate(java.sql.Date.valueOf(sd));
            }

            boolean ok = svc.addTreatment(t);
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
            if (!ok) {
                req.setAttribute("error", "Could not add treatment. Please try again.");
                req.getRequestDispatcher("/WEB-INF/pages/Admin/AddTreatment.jsp").forward(req, resp);
                return;
            }

            // On success
            resp.sendRedirect(req.getContextPath() + "/treatments?action=list&appointmentId=" +
                    req.getParameter("appointmentId"));

        } catch (Exception e) {
<<<<<<< HEAD
            e.printStackTrace();
=======
<<<<<<< HEAD
            e.printStackTrace();
=======
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
            req.setAttribute("error", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/pages/Admin/AddTreatment.jsp").forward(req, resp);
        }
    }
}
