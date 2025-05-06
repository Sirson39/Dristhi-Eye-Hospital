package com.dhristi.controller;

import com.dhristi.model.VisionTestModel;
import com.dhristi.service.VisionTestService;
import com.dhristi.util.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * VisionTestController handles recording new vision tests (by doctors)
 * and listing vision test records for patients.
 */
@WebServlet("/visiontests")
public class VisionTestController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final VisionTestService svc = new VisionTestService();

    /**
     * GET:
     *  - ?action=list → list vision tests for the logged-in patient
     *  - no action   → show the vision test recording form for doctors
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String action = req.getParameter("action");
        if ("list".equalsIgnoreCase(action)) {
            Integer patientId = (Integer) SessionUtil.getAttribute(req, "userId");
            if (patientId == null) {
                resp.sendRedirect(req.getContextPath() + "/login");
                return;
            }
            try {
                List<VisionTestModel> list = svc.listByPatient(patientId);
                req.setAttribute("visionTests", list);
                req.getRequestDispatcher("/pages/Patient/visiontests.jsp")
                   .forward(req, resp);
            } catch (Exception e) {
                throw new ServletException("Failed to list vision tests", e);
            }
        } else {
            // Show the form to record a new vision test
            req.getRequestDispatcher("/pages/Doctor/VisionTest.jsp")
               .forward(req, resp);
        }
    }

    /**
     * POST: record a new vision test by a doctor.
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Integer doctorId = (Integer) SessionUtil.getAttribute(req, "userId");
        if (doctorId == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        try {
            VisionTestModel v = new VisionTestModel();
            v.setPatientId(Integer.parseInt(req.getParameter("patientId")));
            v.setTestDate(java.sql.Date.valueOf(req.getParameter("testDate")));
            v.setTestResults(req.getParameter("testResults"));
            v.setDoctorComments(req.getParameter("doctorComments"));
            v.setInterpretedBy(doctorId);

            boolean ok = svc.recordTest(v);
            if (!ok) {
                req.setAttribute("error", "Could not record vision test. Please try again.");
                req.getRequestDispatcher("/pages/Doctor/VisionTest.jsp")
                   .forward(req, resp);
                return;
            }
            // on success, redirect patient to list view
            resp.sendRedirect(req.getContextPath() + "/visiontests?action=list");
        } catch (Exception e) {
            req.setAttribute("error", e.getMessage());
            req.getRequestDispatcher("/pages/Doctor/VisionTest.jsp")
               .forward(req, resp);
        }
    }
}
