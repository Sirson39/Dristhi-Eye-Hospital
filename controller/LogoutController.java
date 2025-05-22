package com.dhristi.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/logout")
public class LogoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false); // don't create if not exists
        if (session != null) {
            session.invalidate(); // ✅ clear session
        }

        response.sendRedirect(request.getContextPath() + "/home"); 

    }
}
