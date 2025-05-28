package com.dhristi.controller;

import com.dhristi.util.SessionUtil;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet(asyncSupported = true, urlPatterns = { "/home", "/"})
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
       // Integer userId = (Integer) SessionUtil.getAttribute(req, "userId");
        req.getRequestDispatcher("/WEB-INF/pages/Public/home.jsp").forward(req, resp);
        
    }
}
