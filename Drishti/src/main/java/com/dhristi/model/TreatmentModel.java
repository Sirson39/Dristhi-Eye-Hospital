package com.dhristi.model;

import java.util.Date;
import java.util.List;

public class TreatmentModel {
    private int treatmentId;
    private int appointmentId;
    private String diagnosis;
    private String prescription;
    private List<MedicationModel> medications;
    private String diagnosisConditionTreated;
    private String prescribedTreatmentType;
    private String testRecommendations;


    // Getters
    public int getTreatmentId() { return treatmentId; }
    public int getAppointmentId() { return appointmentId; }
    public String getDiagnosis() { return diagnosis; }
    public String getPrescription() { return prescription; }
    public String getDiagnosisConditionTreated() { return diagnosisConditionTreated; }
    public String getPrescribedTreatmentType() { return prescribedTreatmentType; }
    public String getTestRecommendations() { return testRecommendations; }


    public void setTreatmentId(int treatmentId) { this.treatmentId = treatmentId; }
    public void setAppointmentId(int appointmentId) { this.appointmentId = appointmentId; }
    public void setDiagnosis(String diagnosis) { this.diagnosis = diagnosis; }
    public void setPrescription(String prescription) { this.prescription = prescription; }
    public List<MedicationModel> getMedications() { return medications; }
    public void setMedications(List<MedicationModel> medications) { this.medications = medications; }
    public void setDiagnosisConditionTreated(String diagnosisConditionTreated) {
        this.diagnosisConditionTreated = diagnosisConditionTreated;
    }
    public void setPrescribedTreatmentType(String prescribedTreatmentType) {
        this.prescribedTreatmentType = prescribedTreatmentType;
    }
    public void setTestRecommendations(String testRecommendations) {
        this.testRecommendations = testRecommendations;
    }
}
