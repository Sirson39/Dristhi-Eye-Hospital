package com.islington.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Sirson Sharma Chapagain *
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Cookie;
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/Home","/" })
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String Username = request.getParameter("username");
        String Password = request.getParameter("password");

        String errorMessage = "";

        if (Username == null || Username.trim().isEmpty()) {
            errorMessage += "Username is required.<br>";
        }
        if (Password == null || Password.trim().isEmpty()) {
            errorMessage += "Password is required.<br>";
        }
        if (Password != null && Password.length() < 6) {
            errorMessage += "Password must be at least 6 characters long.<br>";
        }

        if (!errorMessage.isEmpty()) {
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("pages/login.jsp").forward(request, response);
            return;
        }

        // Simulated authentication (Replace with database validation)
        if ("admin".equals(Username) && "password123".equals(Password)) {
        	Cookie userCookie = new Cookie("username", Username);
            userCookie.setMaxAge(60 * 60 * 24); // Valid for 1 day
            response.addCookie(userCookie);

            response.sendRedirect("pages/home.jsp");
        } else {
            request.setAttribute("errorMessage", "Invalid username or password.");
            request.getRequestDispatcher("pages/login.jsp").forward(request, response);
        }
    }
}
