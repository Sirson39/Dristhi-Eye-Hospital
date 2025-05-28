package com.dhristi.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/logout")
public class LogoutController extends HttpServlet {
    @Override
<<<<<<< HEAD
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.invalidate(); 
        }
        resp.sendRedirect(req.getContextPath() + "/home");
    }
}

=======
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false); // don't create if not exists
        if (session != null) {
            session.invalidate(); // ✅ clear session
        }

        response.sendRedirect(request.getContextPath() + "/home"); 

    }
}
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
