package com.dhristi.controller;

import com.dhristi.model.TreatmentModel;
import com.dhristi.service.TreatmentService;
import com.dhristi.util.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

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
                List<TreatmentModel> list = svc.getByAppointment(apptId);
                req.setAttribute("treatments", list);
                req.getRequestDispatcher("/WEB-INF/pages/Doctor/viewtreatments.jsp").forward(req, resp);
            } catch (Exception e) {
                throw new ServletException("Failed to list treatments", e);
            }
        } else {
            // Show the add-treatment form
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
            // Validate session again
            Integer doctorId = (Integer) SessionUtil.getAttribute(req, "userId");
            if (doctorId == null) {
                resp.sendRedirect(req.getContextPath() + "/login");
                return;
            }

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
            if (!ok) {
                req.setAttribute("error", "Could not add treatment. Please try again.");
                req.getRequestDispatcher("/WEB-INF/pages/Admin/AddTreatment.jsp").forward(req, resp);
                return;
            }

            // On success
            resp.sendRedirect(req.getContextPath() + "/treatments?action=list&appointmentId=" +
                    req.getParameter("appointmentId"));

        } catch (Exception e) {
            req.setAttribute("error", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/pages/Admin/AddTreatment.jsp").forward(req, resp);
        }
    }
}
