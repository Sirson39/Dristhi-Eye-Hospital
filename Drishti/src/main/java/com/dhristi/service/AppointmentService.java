package com.dhristi.service;

import com.dhristi.config.DbConfig;
import com.dhristi.model.AppointmentModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AppointmentService {

    // ✅ Book appointment
    public boolean bookAppointment(AppointmentModel appt, int userId) {
        String insertAppointmentSQL = "INSERT INTO appointment (appointmentDate, appointmentReason, appointmentStatus, patientName, dept) VALUES (?, ?, ?, ?, ? )";
        String linkUserSQL = "INSERT INTO user_appointment (userId, appointmentId) VALUES (?, ?)";

        try (Connection conn = DbConfig.getDbConnection()) {

            // Step 1: Insert appointment
            PreparedStatement insertStmt = conn.prepareStatement(insertAppointmentSQL, Statement.RETURN_GENERATED_KEYS);
            insertStmt.setString(1, appt.getAppointmentDate());
            insertStmt.setString(2, appt.getAppointmentReason());
            insertStmt.setString(3, appt.getAppointmentStatus());
            insertStmt.setString(4, appt.getPatientName());
            insertStmt.setString(5, appt.getDept());

            int affectedRows = insertStmt.executeUpdate();

            if (affectedRows == 0) return false;

            // Step 2: Get generated appointmentId
            ResultSet keys = insertStmt.getGeneratedKeys();
            if (keys.next()) {
                int appointmentId = keys.getInt(1);

                // Step 3: Link with user_appointment table
                PreparedStatement linkStmt = conn.prepareStatement(linkUserSQL);
                linkStmt.setInt(1, userId);
                linkStmt.setInt(2, appointmentId);
                linkStmt.executeUpdate();

                return true;
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return false;
    }

    // ✅ Get all appointments for a patient
    public List<AppointmentModel> getAppointmentsByUserId(int userId) {
        List<AppointmentModel> list = new ArrayList<>();

        String sql = "SELECT a.* FROM appointment a JOIN user_appointment ua ON a.appointmentId = ua.appointmentId WHERE ua.userId = ?";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                AppointmentModel appt = new AppointmentModel();
                appt.setAppointmentId(rs.getInt("appointmentId"));
                appt.setAppointmentDate(rs.getString("appointmentDate"));
                appt.setAppointmentReason(rs.getString("appointmentReason"));
                appt.setAppointmentStatus(rs.getString("appointmentStatus"));
                appt.setPatientName(rs.getString("patientName"));
                appt.setDept(rs.getString("dept"));
                list.add(appt);
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return list;
    }

    public void cancelAppointment(int appointmentId) {
        String deleteLink = "DELETE FROM user_appointment WHERE appointmentId = ?";
        String deleteAppt = "DELETE FROM appointment WHERE appointmentId = ?";

        try (Connection conn = DbConfig.getDbConnection()) {
            // Step 1: Delete from linking table
            PreparedStatement stmt1 = conn.prepareStatement(deleteLink);
            stmt1.setInt(1, appointmentId);
            stmt1.executeUpdate();

            // Step 2: Delete actual appointment
            PreparedStatement stmt2 = conn.prepareStatement(deleteAppt);
            stmt2.setInt(1, appointmentId);
            stmt2.executeUpdate();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }


    // ✅ Get all appointments (for admin use)
    public List<AppointmentModel> getAllAppointments() {
        List<AppointmentModel> list = new ArrayList<>();
        String sql = "SELECT * FROM appointment";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                AppointmentModel appt = new AppointmentModel();
                appt.setAppointmentId(rs.getInt("appointmentId"));
                appt.setAppointmentDate(rs.getString("appointmentDate"));
                appt.setAppointmentReason(rs.getString("appointmentReason"));
                appt.setAppointmentStatus(rs.getString("appointmentStatus"));
                appt.setPatientName(rs.getString("patientName"));
                appt.setDept(rs.getString("dept"));
                list.add(appt);
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return list;
    }
}
