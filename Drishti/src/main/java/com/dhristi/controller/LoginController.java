package com.dhristi.controller;

import com.dhristi.config.DbConfig;
import com.dhristi.model.PatientModel;
import com.dhristi.util.PasswordUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;

@WebServlet("/login")
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/Public/Login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection conn = DbConfig.getDbConnection()) {
            String query = "SELECT userId, name, email, phoneNumber, password, userRole, age, gender, bloodGroup, address FROM User WHERE email = ?";

            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String hashedPwdInDb = rs.getString("password");
                int userId = rs.getInt("userId");
                String userRole = rs.getString("userRole");

                if (PasswordUtil.hashPassword(password).equals(hashedPwdInDb)) {

                    PatientModel user = new PatientModel();
                    user.setPatientId(userId);
                    user.setName(rs.getString("name"));
                    user.setGender(rs.getString("gender"));
                    user.setEmail(rs.getString("email"));
                    user.setPhone(rs.getString("phoneNumber"));
                    user.setAddress(rs.getString("address"));
                    user.setBloodGroup(rs.getString("bloodGroup"));
                    user.setAge(rs.getInt("age"));

                    // ✅ Set session
                    HttpSession session = request.getSession();
                    session.setAttribute("loggedUser", user);
                    session.setAttribute("userRole", userRole);
<<<<<<< HEAD
                    session.setAttribute("userId", userId);

=======
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04

                    System.out.println("✅ Login successful. userRole = " + userRole);

                    // ✅ Redirect based on role
                    if ("doctor".equalsIgnoreCase(userRole)) {
                        response.sendRedirect(request.getContextPath() + "/DoctorDashboard");
                    } else if ("patient".equalsIgnoreCase(userRole)) {
                        response.sendRedirect(request.getContextPath() + "/PatientDashboard");
                    } else {
                        request.setAttribute("error", "Unknown user role: " + userRole);
                        request.getRequestDispatcher("/WEB-INF/pages/Public/Login.jsp").forward(request, response);
                    }
                    return;
                } else {
                    request.setAttribute("error", "Incorrect password.");
                }
            } else {
                request.setAttribute("error", "User not found.");
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            request.setAttribute("error", "Login failed: " + e.getMessage());
        }

        // On failure
        request.getRequestDispatcher("/WEB-INF/pages/Public/Login.jsp").forward(request, response);
    }
}
