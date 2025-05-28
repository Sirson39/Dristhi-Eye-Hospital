package com.dhristi.service;

import com.dhristi.config.DbConfig;
import com.dhristi.model.PatientModel;
import com.dhristi.model.DoctorModel;
import com.dhristi.model.AdminModel;
import com.dhristi.util.PasswordUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Service class for handling registration operations for Admin, Doctor, and Patient.
 * Utilizes AES/GCM encryption via PasswordUtil instead of BCrypt.
 */
public class RegisterService {

    /**
     * Register a new patient, encrypting password with email-derived key.
     * @param p PatientModel with raw password in passwordHash field
     * @return true if inserted, false otherwise
     */
    public boolean registerPatient(PatientModel p) {
        String sql = "INSERT INTO Patient(Name, DOB, Gender, Email, Phone, Address, Password)"
                   + " VALUES (?,?,?,?,?,?,?)";
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            // encrypt password using email as key
            String encrypted = PasswordUtil.encrypt(p.getEmail(), p.getPasswordHash());
            ps.setString(1, p.getName());
            ps.setString(3, p.getGender());
            ps.setString(4, p.getEmail());
            ps.setString(5, p.getPhone());
            ps.setString(6, p.getAddress());
            ps.setString(7, encrypted);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    /**
     * Register a new doctor, encrypting password with email-derived key.
     */
    public boolean registerDoctor(DoctorModel d) {
        String sql = "INSERT INTO Doctor(Name, Email, Phone, Specialization, Qualification, Available_Days, Available_Times, Password)"
                   + " VALUES (?,?,?,?,?,?,?,?)";
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            String encrypted = PasswordUtil.encrypt(d.getEmail(), d.getPasswordHash());
            ps.setString(1, d.getName());
            ps.setString(2, d.getEmail());
            ps.setString(3, d.getPhone());
            ps.setString(4, d.getSpecialization());
            ps.setString(5, d.getQualification());
            ps.setString(6, d.getAvailableDays());
            ps.setString(7, d.getAvailableTimes());
            ps.setString(8, encrypted);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    /**
     * Register a new admin, encrypting password with email-derived key.
     */
    public boolean registerAdmin(AdminModel a) {
        String sql = "INSERT INTO Admin(Name, Email, Phone, Password) VALUES (?,?,?,?)";
        try (Connection conn = DbConfig.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            String encrypted = PasswordUtil.encrypt(a.getEmail(), a.getPasswordHash());
            ps.setString(1, a.getName());
            ps.setString(2, a.getEmail());
            ps.setString(3, a.getPhone());
            ps.setString(4, encrypted);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
