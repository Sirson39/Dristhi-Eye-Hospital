package com.dhristi.service;

import com.dhristi.config.DbConfig;
import com.dhristi.model.TreatmentModel;
import java.sql.*;
import java.util.*;

public class TreatmentService {
  public boolean addTreatment(TreatmentModel t) throws SQLException {
    String sql = "INSERT INTO Treatment(Appointment_ID,Diagnosis,Treatment_Notes,Prescription,Surgery_Date) VALUES(?,?,?,?,?)";
    try (Connection c = DbConfig.getConnection();
         PreparedStatement ps = c.prepareStatement(sql)) {
      ps.setInt(1, t.getAppointmentId());
      ps.setString(2, t.getDiagnosis());
      ps.setString(3, t.getTreatmentNotes());
      ps.setString(4, t.getPrescription());
      if (t.getSurgeryDate() != null)
        ps.setDate(5, new java.sql.Date(t.getSurgeryDate().getTime()));
      else
        ps.setNull(5, Types.DATE);
      return ps.executeUpdate() == 1;
    }
  }

  public List<TreatmentModel> getByAppointment(int appointmentId) throws SQLException {
    List<TreatmentModel> list = new ArrayList<>();
    String sql = "SELECT * FROM Treatment WHERE Appointment_ID=?";
    try (Connection c = DbConfig.getConnection();
         PreparedStatement ps = c.prepareStatement(sql)) {
      ps.setInt(1, appointmentId);
      try (ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
          TreatmentModel t = new TreatmentModel();
          t.setTreatmentId(rs.getInt("Treatment_ID"));
          t.setAppointmentId(rs.getInt("Appointment_ID"));
          t.setDiagnosis(rs.getString("Diagnosis"));
          t.setTreatmentNotes(rs.getString("Treatment_Notes"));
          t.setPrescription(rs.getString("Prescription"));
          t.setSurgeryDate(rs.getDate("Surgery_Date"));
          list.add(t);
        }
      }
    }
    return list;
  }
}
