package com.dhristi.controller;

<<<<<<< HEAD
import com.dhristi.model.PatientModel;
=======
import com.dhristi.model.UserModel;
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
import com.dhristi.service.FeedbackService;
import com.dhristi.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/SubmitFeedback")
public class SubmitFeedbackController extends HttpServlet {
<<<<<<< HEAD
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        // 🟢 Change here: Use PatientModel instead of UserModel
        PatientModel loggedUser = (PatientModel) session.getAttribute("loggedUser");

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
=======
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
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
