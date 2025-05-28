package com.dhristi.service;

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.dhristi.model.TreatmentModel;
import com.dhristi.model.MedicationModel;
import com.dhristi.config.DbConfig;

public class TreatmentService {

    public boolean addTreatmentForUser(int userId, TreatmentModel treatment) throws SQLException {
        String sqlTreatment = "INSERT INTO treatment (diagnosis_condition_treated, prescribed_treatment_type, test_recommendations) VALUES (?, ?, ?)";
        String sqlMedication = "INSERT INTO medicine (medicineName, medicineDosage, mediDuration, medInstruction) VALUES (?, ?, ?, ?)";
        String sqlUserTreatment = "INSERT INTO user_treatment (userId, treatmentId) VALUES (?, ?)";
        String sqlUserTreatmentMed = "INSERT INTO user_treatment_medicine (userId, treatmentId, medicineName) VALUES (?, ?, ?)";

        // Try-with-resources for Connection
        try (Connection conn = DbConfig.getDbConnection();
        	
  
             PreparedStatement psTreatment = conn.prepareStatement(sqlTreatment, Statement.RETURN_GENERATED_KEYS);
             PreparedStatement psMed = conn.prepareStatement(sqlMedication);
             PreparedStatement psUserTreatment = conn.prepareStatement(sqlUserTreatment);
             PreparedStatement psUserTreatmentMed = conn.prepareStatement(sqlUserTreatmentMed)){

            conn.setAutoCommit(false);

            // Insert Treatment
            psTreatment.setString(1, treatment.getDiagnosisConditionTreated());
            psTreatment.setString(2, treatment.getPrescribedTreatmentType());
            psTreatment.setString(3, treatment.getTestRecommendations());
            psTreatment.executeUpdate();

            ResultSet rs = psTreatment.getGeneratedKeys();
            int treatmentId = 0;
            if (rs.next()) {
                treatmentId = rs.getInt(1);
            }

            // Insert Medications
            for (MedicationModel med : treatment.getMedications()) {
                psMed.setString(1, med.getMedicineName());
                psMed.setString(2, med.getMedicineDosage());
                psMed.setString(3, med.getMediDuration());
                psMed.setString(4, med.getMedInstruction());
                psMed.addBatch();

                psUserTreatmentMed.setInt(1, userId);
                psUserTreatmentMed.setInt(2, treatmentId);
                psUserTreatmentMed.setString(3, med.getMedicineName());
                psUserTreatmentMed.addBatch();
            }

            psMed.executeBatch();
            psUserTreatmentMed.executeBatch();

            // Link treatment to user
            psUserTreatment.setInt(1, userId);
            psUserTreatment.setInt(2, treatmentId);
            psUserTreatment.executeUpdate();

            conn.commit();
            return true;
            

        } catch (SQLException e) {
            throw e; // Let the servlet handle it or add logging
        } catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return false;
		
    }
    public List<TreatmentModel> getByAppointment(int appointmentId) throws SQLException {
        List<TreatmentModel> list = new ArrayList<>();
        String sql = "SELECT * FROM Treatment WHERE appointmentId = ?";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, appointmentId);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    TreatmentModel t = new TreatmentModel();
                    t.setTreatmentId(rs.getInt("treatmentId"));
                    t.setAppointmentId(rs.getInt("appointmentId"));
                    t.setDiagnosis(rs.getString("diagnosis"));
                    t.setPrescription(rs.getString("prescription"));
                    list.add(t);
                }
            }
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        return list;
    }
    
    public List<TreatmentModel> getTreatmentsByUserId(int userId) throws SQLException {
        List<TreatmentModel> treatments = new ArrayList<>();

        String sqlTreatment = "SELECT t.treatmentId, t.diagnosis_condition_treated, t.prescribed_treatment_type, t.test_recommendations " +
                              "FROM treatment t " +
                              "JOIN user_treatment ut ON t.treatmentId = ut.treatmentId " +
                              "WHERE ut.userId = ?";

        String sqlMedications = "SELECT m.* FROM medicine m " +
                                 "JOIN user_treatment_medicine utm ON m.medicineName = utm.medicineName AND utm.treatmentId = ? " +
                                 "WHERE utm.userId = ?";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement psTreatment = conn.prepareStatement(sqlTreatment);
             PreparedStatement psMedications = conn.prepareStatement(sqlMedications)) {

            psTreatment.setInt(1, userId);

            try (ResultSet rs = psTreatment.executeQuery()) {
                while (rs.next()) {
                    TreatmentModel t = new TreatmentModel();
                    t.setTreatmentId(rs.getInt("t.treatmentId"));
                    t.setDiagnosisConditionTreated(rs.getString("t.diagnosis_condition_treated"));
                    t.setPrescribedTreatmentType(rs.getString("t.prescribed_treatment_type"));
                    t.setTestRecommendations(rs.getString("t.test_recommendations"));

                    // Get medications for this treatment
                    List<MedicationModel> meds = new ArrayList<>();
                    psMedications.setInt(1, t.getTreatmentId());
                    psMedications.setInt(2, userId);

                    try (ResultSet rsMed = psMedications.executeQuery()) {
                        while (rsMed.next()) {
                            MedicationModel med = new MedicationModel();
                            med.setMedicineName(rsMed.getString("medicineName"));
                            med.setMedicineDosage(rsMed.getString("medicineDosage"));
                            med.setMediDuration(rsMed.getString("mediDuration"));
                            med.setMedInstruction(rsMed.getString("medInstruction"));
                            meds.add(med);
                        }
                    }

                    t.setMedications(meds);
                    treatments.add(t);
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return treatments;
    }

<<<<<<< HEAD
=======
=======
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
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
}
