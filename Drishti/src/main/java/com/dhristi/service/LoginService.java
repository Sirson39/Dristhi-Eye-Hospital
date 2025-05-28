package com.dhristi.service;

import com.dhristi.config.DbConfig;
import com.dhristi.model.AdminModel;
import com.dhristi.model.DoctorModel;
import com.dhristi.model.PatientModel;
import com.dhristi.util.PasswordUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Service for authenticating Admins, Doctors, and Patients using
 * AES/GCM password encryption (PasswordUtil).
 */
public class LoginService {

    /**
     * Authenticate an Admin by email and raw password.
     * @return populated AdminModel if successful, or null if invalid or error
     */
    public AdminModel loginAdmin(String email, String rawPassword) {
        String sql = "SELECT Admin_ID, Name, Email, Phone, Password FROM Admin WHERE Email = ?";
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, email);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String stored = rs.getString("Password");
                    // verify with username/email as key
                    if (PasswordUtil.verifyPassword(rawPassword, stored, email)) {
                        AdminModel a = new AdminModel();
                        a.setAdminId(rs.getInt("Admin_ID"));
                        a.setName(rs.getString("Name"));
                        a.setEmail(rs.getString("Email"));
                        a.setPhone(rs.getString("Phone"));
                        return a;
                    }
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * Authenticate a Doctor by email and raw password.
     */
    public DoctorModel loginDoctor(String email, String rawPassword) {
        String sql = "SELECT Doctor_ID, Name, Email, Phone, Specialization, Qualification, " +
                     "Available_Days, Available_Times, Password FROM Doctor WHERE Email = ?";
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, email);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String stored = rs.getString("Password");
                    if (PasswordUtil.verifyPassword(rawPassword, stored, email)) {
                        DoctorModel d = new DoctorModel();
                        d.setDoctorId(rs.getInt("Doctor_ID"));
                        d.setName(rs.getString("Name"));
                        d.setEmail(rs.getString("Email"));
                        d.setPhone(rs.getString("Phone"));
                        d.setSpecialization(rs.getString("Specialization"));
                        d.setQualification(rs.getString("Qualification"));
                        d.setAvailableDays(rs.getString("Available_Days"));
                        d.setAvailableTimes(rs.getString("Available_Times"));
                        return d;
                    }
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * Authenticate a Patient by email and raw password.
     */
    public PatientModel loginPatient(String email, String rawPassword) {
        String sql = "SELECT Patient_ID, Name, DOB, Gender, Email, Phone, Address, Password " +
                     "FROM Patient WHERE Email = ?";
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, email);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String stored = rs.getString("Password");
                    if (PasswordUtil.verifyPassword(rawPassword, stored, email)) {
                        PatientModel p = new PatientModel();
                        p.setPatientId(rs.getInt("Patient_ID"));
                        p.setName(rs.getString("Name"));
                        p.setDob(rs.getDate("DOB"));
                        p.setGender(rs.getString("Gender"));
                        p.setEmail(rs.getString("Email"));
                        p.setPhone(rs.getString("Phone"));
                        p.setAddress(rs.getString("Address"));
                        return p;
                    }
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
}
