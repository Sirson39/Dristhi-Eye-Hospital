package com.dhristi.controller;
import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Admin/feedbacks")
public class FeedbackController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        System.out.println(" /Admin/feedbacks HIT");

        HttpSession session = req.getSession(false);
        System.out.println(" session = " + session);

        if (session != null) {
            Object user = session.getAttribute("loggedUser");
            System.out.println(" loggedUser = " + user);

            if (user instanceof com.dhristi.model.UserModel) {
                com.dhristi.model.UserModel model = (com.dhristi.model.UserModel) user;
                System.out.println(" userRole = " + model.getUserRole());
            } else {
                System.out.println(" loggedUser is NOT a UserModel");
            }
        }

        com.dhristi.model.UserModel loggedUser = (com.dhristi.model.UserModel) session.getAttribute("loggedUser");

        if (loggedUser == null || !"doctor".equalsIgnoreCase(loggedUser.getUserRole())) {
            System.out.println(" Unauthorized. Redirecting to login.");
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        int doctorId = loggedUser.getUserId();
        System.out.println(" Authenticated doctor ID = " + doctorId);

        List<com.dhristi.model.FeedbackViewModel> feedbacks = new com.dhristi.service.FeedbackService().getFeedbacksForDoctor(doctorId);
        req.setAttribute("feedbackList", feedbacks);
        req.getRequestDispatcher("/WEB-INF/pages/Admin/Feedback.jsp").forward(req, resp);
    }
}
