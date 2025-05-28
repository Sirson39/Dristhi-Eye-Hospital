package com.dhristi.util;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Utility class for managing HTTP cookies.
 */
public class CookieUtil {

    /**
     * Adds a cookie to the HTTP response.
     * @param response the HTTP response
     * @param name     the cookie name
     * @param value    the cookie value
     * @param maxAge   max age in seconds
     */
    public static void addCookie(HttpServletResponse response, String name, String value, int maxAge) {
        Cookie cookie = new Cookie(name, value);
        cookie.setPath("/");
        cookie.setHttpOnly(true);
        cookie.setSecure(true);
        cookie.setMaxAge(maxAge);
        response.addCookie(cookie);
    }

    /**
     * Retrieves a cookie value by name.
     * @param request the HTTP request
     * @param name    the cookie name
     * @return the cookie value, or null if not found
     */
    public static String getCookieValue(HttpServletRequest request, String name) {
        Cookie cookie = getCookie(request, name);
        return (cookie != null) ? cookie.getValue() : null;
    }

    /**
     * Retrieves a Cookie object by name.
     * @param request the HTTP request
     * @param name    the cookie name
     * @return the Cookie, or null if not found
     */
    public static Cookie getCookie(HttpServletRequest request, String name) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals(name)) {
                    return c;
                }
            }
        }
        return null;
    }

    /**
     * Deletes a cookie by setting its max age to zero.
     * @param response the HTTP response
     * @param name     the cookie name
     */
    public static void deleteCookie(HttpServletResponse response, String name) {
        Cookie cookie = new Cookie(name, "");
        cookie.setPath("/");
        cookie.setMaxAge(0);
        response.addCookie(cookie);
    }
}
