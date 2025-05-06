package com.dhristi.util;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

/**
 * Utility class for managing session attributes.
 */
public class SessionUtil {

    /**
     * Stores an attribute in the user's HTTP session.
     * If no session exists, a new one is created.
     *
     * @param request the HTTP request
     * @param key     the attribute name
     * @param value   the attribute value
     */
    public static void setAttribute(HttpServletRequest request, String key, Object value) {
        HttpSession session = request.getSession();
        session.setAttribute(key, value);
    }

    /**
     * Retrieves an attribute from the user's HTTP session.
     * Returns null if no session exists or if the attribute is not found.
     *
     * @param request the HTTP request
     * @param key     the attribute name
     * @return the attribute value, or null
     */
    public static Object getAttribute(HttpServletRequest request, String key) {
        HttpSession session = request.getSession(false);
        return (session != null) ? session.getAttribute(key) : null;
    }

    /**
     * Removes an attribute from the user's HTTP session.
     * Does nothing if no session exists.
     *
     * @param request the HTTP request
     * @param key     the attribute name to remove
     */
    public static void removeAttribute(HttpServletRequest request, String key) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttribute(key);
        }
    }

    /**
     * Invalidates the current HTTP session, clearing all attributes.
     * Does nothing if no session exists.
     *
     * @param request the HTTP request
     */
    public static void invalidate(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
    }
}
