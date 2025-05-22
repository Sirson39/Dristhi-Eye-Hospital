package com.dhristi.service;

import com.dhristi.util.PasswordUtil;
import com.dhristi.config.DbConfig;
import com.dhristi.model.PatientModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PatientService {

    // ✅ Update patient profile
    public boolean updatePatientProfile(PatientModel patient) {
        String sql = "UPDATE User SET name = ?, email = ?, phoneNumber = ?, age = ?, gender = ?, bloodGroup = ?, address = ? WHERE userId = ?";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, patient.getName());
            stmt.setString(2, patient.getEmail());
            stmt.setString(3, patient.getPhone());
            stmt.setInt(4, patient.getAge());
            stmt.setString(5, patient.getGender());
            stmt.setString(6, patient.getBloodGroup());
            stmt.setString(7, patient.getAddress());
            stmt.setInt(8, patient.getPatientId());

            return stmt.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    // ✅ Validate current password (from login or change password form)
    public boolean validateCurrentPassword(String email, String currentPassword) {
        String sql = "SELECT password FROM User WHERE email = ?";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String actualPassword = rs.getString("password");
                return actualPassword.equals(currentPassword); // 🔐 Use hashing in production
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean updatePassword(int userId, String newPassword) {
        String sql = "UPDATE User SET password = ? WHERE userId = ?";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            String hashedPassword = PasswordUtil.hashPassword(newPassword); // ✅ hash it
            stmt.setString(1, hashedPassword);
            stmt.setInt(2, userId);

            return stmt.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}
