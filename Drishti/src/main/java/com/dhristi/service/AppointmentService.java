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


<<<<<<< HEAD
    public int getTotalPatients() {
        int count = 0;
        String sql = "SELECT COUNT(DISTINCT patientName) FROM appointment";
        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return count;
    }
    
    public AppointmentModel getNextPatient() {
        String sql = "SELECT * FROM appointment WHERE DATE(appointmentDate) = CURDATE() AND appointmentStatus = 'Pending' ORDER BY appointmentDate ASC LIMIT 1";
        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                AppointmentModel appt = new AppointmentModel();
                appt.setPatientName(rs.getString("patientName"));
                appt.setAppointmentDate(rs.getString("appointmentDate"));
                appt.setAppointmentReason(rs.getString("appointmentReason"));
                appt.setDept(rs.getString("dept"));
                return appt;
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    public int getTodaysPatients() {
        int count = 0;
        String sql = "SELECT COUNT(DISTINCT patientName) FROM appointment WHERE DATE(appointmentDate) = CURDATE()";
        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) count = rs.getInt(1);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return count;
    }

    public int getTodaysAppointments() {
        int count = 0;
        String sql = "SELECT COUNT(*) FROM appointment WHERE DATE(appointmentDate) = CURDATE()";
        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) count = rs.getInt(1);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return count;
    }

    public int getPendingRecords() {
        int count = 0;
        String sql = "SELECT COUNT(*) FROM appointment WHERE appointmentStatus='Pending'";
        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return count;
    }

    public List<AppointmentModel> getTodaysAppointmentsList() {
        List<AppointmentModel> list = new ArrayList<>();
        String sql = "SELECT * FROM appointment WHERE DATE(appointmentDate) = CURDATE()";
        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                AppointmentModel appt = new AppointmentModel();
                appt.setAppointmentId(rs.getInt("appointmentId"));
                appt.setAppointmentDate(rs.getString("appointmentDate"));
                appt.setAppointmentReason(rs.getString("appointmentReason"));
                appt.setAppointmentStatus(rs.getString("appointmentStatus"));
                appt.setDept(rs.getString("dept"));
                appt.setPatientName(rs.getString("patientName"));
                list.add(appt);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public List<AppointmentModel> getPendingAppointmentRequests() {
        List<AppointmentModel> list = new ArrayList<>();
        String sql = "SELECT * FROM appointment WHERE appointmentStatus = 'Pending' AND DATE(appointmentDate) = CURDATE()";
        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                AppointmentModel appt = new AppointmentModel();
                appt.setPatientName(rs.getString("patientName"));
                appt.setAppointmentDate(rs.getString("appointmentDate"));
                appt.setAppointmentReason(rs.getString("appointmentReason"));
                appt.setDept(rs.getString("dept"));
                appt.setAppointmentStatus(rs.getString("appointmentStatus"));
                list.add(appt);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public void updateAppointmentStatus(int appointmentId, String newStatus) {
        String sql = "UPDATE appointment SET appointmentStatus = ? WHERE appointmentId = ?";
        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, newStatus);
            stmt.setInt(2, appointmentId);
            stmt.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
=======
    // ✅ Get all appointments (for admin use)
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
    public List<AppointmentModel> getAllAppointments() {
        List<AppointmentModel> list = new ArrayList<>();
        String sql = "SELECT * FROM appointment";

        try (Connection conn = DbConfig.getDbConnection();
<<<<<<< HEAD
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                AppointmentModel appt = new AppointmentModel();
                appt.setAppointmentId(rs.getInt("appointmentId"));
                appt.setAppointmentDate(rs.getString("appointmentDate"));
                appt.setAppointmentReason(rs.getString("appointmentReason"));
                appt.setAppointmentStatus(rs.getString("appointmentStatus"));
                appt.setDept(rs.getString("dept"));
                appt.setPatientName(rs.getString("patientName"));
                list.add(appt);
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return list;
    }
    
    public List<AppointmentModel> getFilteredAppointments(String search, String fromDate, String toDate) {
        List<AppointmentModel> list = new ArrayList<>();
        StringBuilder sql = new StringBuilder("SELECT * FROM appointment WHERE 1=1");

        // Build dynamic query
        if (search != null && !search.trim().isEmpty()) {
            sql.append(" AND patientName LIKE ?");
        }
        if (fromDate != null && !fromDate.isEmpty()) {
            sql.append(" AND appointmentDate >= ?");
        }
        if (toDate != null && !toDate.isEmpty()) {
            sql.append(" AND appointmentDate <= ?");
        }

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql.toString())) {

            int index = 1;
            if (search != null && !search.trim().isEmpty()) {
                stmt.setString(index++, "%" + search + "%");
            }
            if (fromDate != null && !fromDate.isEmpty()) {
                stmt.setString(index++, fromDate);
            }
            if (toDate != null && !toDate.isEmpty()) {
                stmt.setString(index++, toDate);
            }

            ResultSet rs = stmt.executeQuery();
=======
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            ResultSet rs = stmt.executeQuery();

>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
            while (rs.next()) {
                AppointmentModel appt = new AppointmentModel();
                appt.setAppointmentId(rs.getInt("appointmentId"));
                appt.setAppointmentDate(rs.getString("appointmentDate"));
                appt.setAppointmentReason(rs.getString("appointmentReason"));
                appt.setAppointmentStatus(rs.getString("appointmentStatus"));
<<<<<<< HEAD
                appt.setDept(rs.getString("dept"));
                appt.setPatientName(rs.getString("patientName"));
                list.add(appt);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return list;
    }


}
=======
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
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
