package com.dhristi.controller;

import com.dhristi.model.FeedbackModel;
import com.dhristi.service.FeedbackService;
import com.dhristi.util.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * FeedbackController handles submission of feedback by patients
 * and listing of feedback for doctors.
 */
@WebServlet("/feedback")
public class FeedbackController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final FeedbackService svc = new FeedbackService();

    /**
     * GET: list feedback entries for the logged-in doctor.
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Integer doctorId = (Integer) SessionUtil.getAttribute(req, "userId");
        if (doctorId == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        try {
            List<FeedbackModel> list = svc.listByDoctor(doctorId);
            req.setAttribute("feedbacks", list);
            req.getRequestDispatcher("/pages/Doctor/feedback.jsp")
               .forward(req, resp);
        } catch (Exception e) {
            throw new ServletException("Failed to list feedback", e);
        }
    }

    /**
     * POST: submit new feedback by a patient.
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Integer patientId = (Integer) SessionUtil.getAttribute(req, "userId");
        if (patientId == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        try {
            FeedbackModel f = new FeedbackModel();
            f.setPatientId(patientId);
            f.setDoctorId(Integer.parseInt(req.getParameter("doctorId")));
            f.setRating(Integer.parseInt(req.getParameter("rating")));
            f.setComments(req.getParameter("comments"));
            f.setStatus("Pending");

            boolean ok = svc.submitFeedback(f);
            if (!ok) {
                req.setAttribute("error", "Could not submit feedback");
                req.getRequestDispatcher("/pages/Patient/feedback.jsp")
                   .forward(req, resp);
                return;
            }
            // Redirect to patient dashboard or confirmation page
            resp.sendRedirect(req.getContextPath() + "/home");
        } catch (Exception e) {
            req.setAttribute("error", e.getMessage());
            req.getRequestDispatcher("/pages/Patient/feedback.jsp")
               .forward(req, resp);
        }
    }
}
