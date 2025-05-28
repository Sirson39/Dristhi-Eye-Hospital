// File: com.dhristi.util.SecurityUtil.java
package com.dhristi.util;

import java.security.MessageDigest;
import java.nio.charset.StandardCharsets;

public class PasswordUtil {

    // ✅ Hash password using SHA-256
    public static String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashed = md.digest(password.getBytes(StandardCharsets.UTF_8));

            StringBuilder hex = new StringBuilder();
            for (byte b : hashed) {
                hex.append(String.format("%02x", b));
            }
            return hex.toString();

        } catch (Exception e) {
            throw new RuntimeException("Password hashing failed", e);
        }
    }
}
