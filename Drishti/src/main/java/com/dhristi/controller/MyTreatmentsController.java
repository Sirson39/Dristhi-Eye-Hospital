package com.dhristi.controller;

import com.dhristi.model.TreatmentModel;
import com.dhristi.service.TreatmentService;
import com.dhristi.util.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/Patient/mytreatments")
public class MyTreatmentsController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        Integer userId = (Integer) SessionUtil.getAttribute(req, "userId");

        if (session == null || userId == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        try {
            TreatmentService svc = new TreatmentService();
            List<TreatmentModel> treatments = svc.getTreatmentsByUserId(userId);
            req.setAttribute("treatments", treatments);
            req.getRequestDispatcher("/WEB-INF/pages/Patient/MyTreatment.jsp").forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Error: " + e.getMessage());
            req.getRequestDispatcher("/WEB-INF/pages/Patient/MyTreatment.jsp").forward(req, resp);
        }
    }
}
