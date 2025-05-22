package com.dhristi.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.dhristi.service.FeedbackService;

/**
 * Servlet implementation class DeletefeedbackController
 */
@WebServlet("/Deletefeedback")
public class DeleteFeedbackController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String feedbackIdParam = req.getParameter("feedbackId");

        if (feedbackIdParam != null && !feedbackIdParam.isEmpty()) {
            int feedbackId = Integer.parseInt(feedbackIdParam);
            System.out.println("Attempting to delete feedback ID: " + feedbackId);

            boolean deleted = new FeedbackService().deleteFeedback(feedbackId);
            System.out.println("Deleted? " + deleted);
        }

        resp.sendRedirect(req.getContextPath() + "/Admin/feedbacks");
    }
}
