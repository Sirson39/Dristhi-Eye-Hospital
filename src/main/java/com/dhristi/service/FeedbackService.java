package com.dhristi.service;

import com.dhristi.config.DbConfig;
import com.dhristi.model.FeedbackModel;
import java.sql.*;
import java.util.*;

public class FeedbackService {
  public boolean submitFeedback(FeedbackModel f) throws SQLException {
    String sql = "INSERT INTO Feedback(Patient_ID,Doctor_ID,Rating,Comments,Status) VALUES(?,?,?,?,?)";
    try (Connection c = DbConfig.getConnection();
         PreparedStatement ps = c.prepareStatement(sql)) {
      ps.setInt(1, f.getPatientId());
      ps.setInt(2, f.getDoctorId());
      ps.setInt(3, f.getRating());
      ps.setString(4, f.getComments());
      ps.setString(5, f.getStatus());
      return ps.executeUpdate() == 1;
    }
  }

  public List<FeedbackModel> listByDoctor(int doctorId) throws SQLException {
    List<FeedbackModel> list = new ArrayList<>();
    String sql = "SELECT * FROM Feedback WHERE Doctor_ID=?";
    try (Connection c = DbConfig.getConnection();
         PreparedStatement ps = c.prepareStatement(sql)) {
      ps.setInt(1, doctorId);
      try (ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
          FeedbackModel f = new FeedbackModel();
          f.setFeedbackId(rs.getInt("Feedback_ID"));
          f.setPatientId(rs.getInt("Patient_ID"));
          f.setDoctorId(rs.getInt("Doctor_ID"));
          f.setRating(rs.getInt("Rating"));
          f.setComments(rs.getString("Comments"));
          f.setStatus(rs.getString("Status"));
          list.add(f);
        }
      }
    }
    return list;
  }
}
