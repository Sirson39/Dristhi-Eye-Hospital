package com.dhristi.service;

import com.dhristi.config.DbConfig;
import com.dhristi.model.VisionTestModel;
import java.sql.*;
import java.util.*;

public class VisionTestService {
  public boolean recordTest(VisionTestModel v) throws SQLException {
    String sql = "INSERT INTO VisionTest(Patient_ID,Test_Date,Test_Results,Doctor_Comments,Interpreted_By) VALUES(?,?,?,?,?)";
    try (Connection c = DbConfig.getConnection();
         PreparedStatement ps = c.prepareStatement(sql)) {
      ps.setInt(1, v.getPatientId());
      ps.setDate(2, new java.sql.Date(v.getTestDate().getTime()));
      ps.setString(3, v.getTestResults());
      ps.setString(4, v.getDoctorComments());
      ps.setInt(5, v.getInterpretedBy());
      return ps.executeUpdate() == 1;
    }
  }

  public List<VisionTestModel> listByPatient(int patientId) throws SQLException {
    List<VisionTestModel> list = new ArrayList<>();
    String sql = "SELECT * FROM VisionTest WHERE Patient_ID=?";
    try (Connection c = DbConfig.getConnection();
         PreparedStatement ps = c.prepareStatement(sql)) {
      ps.setInt(1, patientId);
      try (ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
          VisionTestModel v = new VisionTestModel();
          v.setTestId(rs.getInt("Test_ID"));
          v.setPatientId(rs.getInt("Patient_ID"));
          v.setTestDate(rs.getDate("Test_Date"));
          v.setTestResults(rs.getString("Test_Results"));
          v.setDoctorComments(rs.getString("Doctor_Comments"));
          v.setInterpretedBy(rs.getInt("Interpreted_By"));
          list.add(v);
        }
      }
    }
    return list;
  }
}
