package com.dhristi.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebFilter(urlPatterns = {
	    "/DoctorDashborad",
	    "/appointments",
	    "/schedule",
	    "/billing",
	    "/add-treatment",
	    "/patient-records",
	    "/manage-patient",
	    "/feedbacks",
	    "/profile-settings",
	    "/patient/*"
	})

public class AuthFilter implements Filter {

    @Override
    public void init(FilterConfig fc) { }

    @Override
    public void destroy() { }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession(false);

        String uri = request.getRequestURI();
        String context = request.getContextPath();

        // ✅ Allow static resources and public pages
        boolean isPublic = uri.equals(context + "/login")
                        || uri.equals(context + "/signup")
                        || uri.equals(context + "/home")
                        || uri.equals(context + "/AboutUs")
                        || uri.equals(context + "/doctor")
                        || uri.equals(context + "/ContactUs")
                        || uri.endsWith("Login.jsp")
                        || uri.endsWith("Signin.jsp")
                        || uri.contains("/pages/Public/")
                        || uri.contains("/css/")
                        || uri.contains("/js/")
                        || uri.contains("/images/");

        boolean loggedIn = session != null && session.getAttribute("userId") != null;
        String userRole = (session != null) ? (String) session.getAttribute("userRole") : null;

        // ❌ If not logged in and trying to access protected page
        if (!isPublic && !loggedIn) {
            response.sendRedirect(context + "/login");
            return;
        }

        // 🔐 Doctor page but not doctor role
        if (uri.contains("/pages/Doctor/") && !"doctor".equalsIgnoreCase(userRole)) {
            response.sendRedirect(context + "/unauthorized.jsp");
            return;
        }

        // 🔐 Patient page but not patient role
        if (uri.contains("/pages/Patient/") && !"patient".equalsIgnoreCase(userRole)) {
            response.sendRedirect(context + "/unauthorized.jsp");
            return;
        }

        // ✅ Passed all checks
        chain.doFilter(req, res);
    }
}
