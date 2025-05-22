package com.dhristi.controller;

import com.dhristi.model.UserModel;
import com.dhristi.service.FeedbackService;
import com.dhristi.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/SubmitFeedback")
public class SubmitFeedbackController extends HttpServlet {
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	            throws ServletException, IOException {

	        HttpSession session = req.getSession(false);
	        UserModel loggedUser = (UserModel) session.getAttribute("loggedUser");

	        if (loggedUser == null) {
	            resp.sendRedirect(req.getContextPath() + "/login");
	            return;
	        }

	        try {
	            int patientId = loggedUser.getUserId();

	            // 👇 Fetch the only doctor
	            int doctorId = new UserService().getFirstDoctorId();

	            int rating = Integer.parseInt(req.getParameter("rating"));
	            String message = req.getParameter("message");

	            FeedbackService service = new FeedbackService();
	            boolean submitted = service.submitFeedback(patientId, doctorId, rating, message);

	            resp.sendRedirect(req.getContextPath() + "/Patient/feedback?fb=" + (submitted ? "1" : "0"));

	        } catch (Exception e) {
	            e.printStackTrace();
	            resp.sendRedirect(req.getContextPath() + "/Patient/feedback?fb=0");
	        }
	    }
	}