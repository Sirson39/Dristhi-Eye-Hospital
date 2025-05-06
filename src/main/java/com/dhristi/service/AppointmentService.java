package com.dhristi.service;

import com.dhristi.config.DbConfig;
import com.dhristi.model.AppointmentModel;
import java.sql.*;
import java.util.*;

public class AppointmentService {
  public boolean bookAppointment(AppointmentModel a) throws SQLException {
    String sql = "INSERT INTO Appointment(Patient_ID,Doctor_ID,Appointment_Date,Appointment_Time,Status) VALUES(?,?,?,?,?)";
    try (Connection c = DbConfig.getConnection();
         PreparedStatement ps = c.prepareStatement(sql)) {
      ps.setInt(1, a.getPatientId());
      ps.setInt(2, a.getDoctorId());
      ps.setDate(3, new java.sql.Date(a.getAppointmentDate().getTime()));
      ps.setTime(4, Time.valueOf(a.getAppointmentTime()));
      ps.setString(5, a.getStatus());
      return ps.executeUpdate() == 1;
    }
  }

  public List<AppointmentModel> listByPatient(int patientId) throws SQLException {
    List<AppointmentModel> list = new ArrayList<>();
    String sql = "SELECT * FROM Appointment WHERE Patient_ID=?";
    try (Connection c = DbConfig.getConnection();
         PreparedStatement ps = c.prepareStatement(sql)) {
      ps.setInt(1, patientId);
      try (ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
          AppointmentModel a = new AppointmentModel();
          a.setAppointmentId(rs.getInt("Appointment_ID"));
          a.setPatientId(rs.getInt("Patient_ID"));
          a.setDoctorId(rs.getInt("Doctor_ID"));
          a.setAppointmentDate(rs.getDate("Appointment_Date"));
          a.setAppointmentTime(rs.getTime("Appointment_Time").toLocalTime());
          a.setStatus(rs.getString("Status"));
          list.add(a);
        }
      }
    }
    return list;
  }

  public boolean updateStatus(int appointmentId, String newStatus) throws SQLException {
    String sql = "UPDATE Appointment SET Status=? WHERE Appointment_ID=?";
    try (Connection c = DbConfig.getConnection();
         PreparedStatement ps = c.prepareStatement(sql)) {
      ps.setString(1, newStatus);
      ps.setInt(2, appointmentId);
      return ps.executeUpdate() == 1;
    }
  }
}
