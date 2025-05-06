package com.dhristi.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebFilter("/*")
public class AuthFilter implements Filter {
    @Override public void init(FilterConfig fc) { }
    @Override public void destroy() { }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest  request  = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        String uri     = request.getRequestURI();
        String context = request.getContextPath();

        // Public URLs we let through
        boolean isPublic = uri.equals(context + "/login")
                        || uri.equals(context + "/signin")
                        || uri.endsWith("Login.jsp")
                        || uri.endsWith("Signin.jsp")
                        || uri.contains("/pages/Public/")
                        || uri.contains("/css/")
                        || uri.contains("/js/")
                        || uri.contains("/images/");

        HttpSession session = request.getSession(false);
        boolean loggedIn = session != null && session.getAttribute("userId") != null;

        if (!isPublic && !loggedIn) {
            response.sendRedirect(context + "/login");
            return;
        }
        chain.doFilter(req, res);
    }
}
