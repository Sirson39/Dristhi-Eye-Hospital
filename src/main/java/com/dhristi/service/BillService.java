package com.dhristi.service;

import com.dhristi.config.DbConfig;
import com.dhristi.model.BillModel;
import java.math.BigDecimal;
import java.sql.*;
import java.util.*;

public class BillService {
  public boolean createBill(BillModel b) throws SQLException {
    String sql = "INSERT INTO Bill(Patient_ID,Appointment_ID,Total_Amount,Payment_Status,Payment_Method,Invoice_URL,Payment_Date) VALUES(?,?,?,?,?,?,?)";
    try (Connection c = DbConfig.getConnection();
         PreparedStatement ps = c.prepareStatement(sql)) {
      ps.setInt(1, b.getPatientId());
      ps.setInt(2, b.getAppointmentId());
      ps.setBigDecimal(3, b.getTotalAmount());
      ps.setString(4, b.getPaymentStatus());
      ps.setString(5, b.getPaymentMethod());
      ps.setString(6, b.getInvoiceUrl());
      if (b.getPaymentDate() != null)
        ps.setDate(7, new java.sql.Date(b.getPaymentDate().getTime()));
      else
        ps.setNull(7, Types.DATE);
      return ps.executeUpdate() == 1;
    }
  }

  public List<BillModel> listByPatient(int patientId) throws SQLException {
    List<BillModel> list = new ArrayList<>();
    String sql = "SELECT * FROM Bill WHERE Patient_ID=?";
    try (Connection c = DbConfig.getConnection();
         PreparedStatement ps = c.prepareStatement(sql)) {
      ps.setInt(1, patientId);
      try (ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
          BillModel b = new BillModel();
          b.setBillId(rs.getInt("Bill_ID"));
          b.setPatientId(rs.getInt("Patient_ID"));
          b.setAppointmentId(rs.getInt("Appointment_ID"));
          b.setTotalAmount(rs.getBigDecimal("Total_Amount"));
          b.setPaymentStatus(rs.getString("Payment_Status"));
          b.setPaymentMethod(rs.getString("Payment_Method"));
          b.setInvoiceUrl(rs.getString("Invoice_URL"));
          b.setPaymentDate(rs.getDate("Payment_Date"));
          list.add(b);
        }
      }
    }
    return list;
  }
}
