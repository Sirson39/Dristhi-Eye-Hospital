package com.dhristi.controller;

import com.dhristi.config.DbConfig;
import com.dhristi.util.PasswordUtil;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.sql.*;

@WebServlet(asyncSupported = true, urlPatterns = { "/signup" })
public class RegisterController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	request.getRequestDispatcher("WEB-INF/pages/Public/Signin.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form values
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Check if passwords match
        if (!password.equals(confirmPassword)) {
            request.setAttribute("error", "Passwords do not match.");
            request.getRequestDispatcher("/WEB-INF/pages/Public/Signin.jsp").forward(request, response);
            return;
        }

        // Hash the password
        String hashedPassword = PasswordUtil.hashPassword(password);

        try (Connection conn = DbConfig.getDbConnection()) {
            // Check if email already exists
            PreparedStatement check = conn.prepareStatement("SELECT email FROM User WHERE email = ?");
            check.setString(1, email);
            ResultSet rs = check.executeQuery();
            if (rs.next()) {
                request.setAttribute("error", "Email already registered.");
                request.getRequestDispatcher("/WEB-INF/pages/Public/Signin.jsp").forward(request, response);
                return;
            }

            // Insert new user
            String query = "INSERT INTO User (name, email, phoneNumber, password, userRole) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, username);       // name = username
            ps.setString(2, email);
            ps.setString(3, "");             // phoneNumber is empty (not in form)
            ps.setString(4, hashedPassword);
            ps.setString(5, "patient");      // default role

            int rows = ps.executeUpdate();

            if (rows > 0) {
                request.setAttribute("success", "Registration successful! Please log in.");
                request.getRequestDispatcher("/WEB-INF/pages/Public/Login.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Something went wrong. Please try again.");
                request.getRequestDispatcher("/WEB-INF/pages/Public/Signin.jsp").forward(request, response);
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/pages/Public/Signin.jsp").forward(request, response);
        }
    }
}
