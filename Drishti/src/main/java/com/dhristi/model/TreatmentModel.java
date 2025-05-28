package com.dhristi.model;

import java.util.Date;
<<<<<<< HEAD
import java.util.List;

=======
<<<<<<< HEAD
import java.util.List;

=======

/**
 * Represents a treatment record linked to an appointment.
 */
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
public class TreatmentModel {
    private int treatmentId;
    private int appointmentId;
    private String diagnosis;
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
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
<<<<<<< HEAD
=======
=======
    private String treatmentNotes;
    private String prescription;
    private Date surgeryDate;

    /** Default constructor */
    public TreatmentModel() { }

    /**
     * Full constructor
     * @param treatmentId   unique ID of the treatment
     * @param appointmentId ID of the associated appointment
     * @param diagnosis     diagnosis details
     * @param treatmentNotes notes on treatment provided
     * @param prescription  prescribed medications
     * @param surgeryDate   scheduled surgery date (if any)
     */
    public TreatmentModel(int treatmentId, int appointmentId, String diagnosis,
                          String treatmentNotes, String prescription, Date surgeryDate) {
        this.treatmentId = treatmentId;
        this.appointmentId = appointmentId;
        this.diagnosis = diagnosis;
        this.treatmentNotes = treatmentNotes;
        this.prescription = prescription;
        this.surgeryDate = surgeryDate;
    }

    // Getters & Setters
    public int getTreatmentId() { return treatmentId; }
    public void setTreatmentId(int treatmentId) { this.treatmentId = treatmentId; }

    public int getAppointmentId() { return appointmentId; }
    public void setAppointmentId(int appointmentId) { this.appointmentId = appointmentId; }

    public String getDiagnosis() { return diagnosis; }
    public void setDiagnosis(String diagnosis) { this.diagnosis = diagnosis; }

    public String getTreatmentNotes() { return treatmentNotes; }
    public void setTreatmentNotes(String treatmentNotes) { this.treatmentNotes = treatmentNotes; }

    public String getPrescription() { return prescription; }
    public void setPrescription(String prescription) { this.prescription = prescription; }

    public Date getSurgeryDate() { return surgeryDate; }
    public void setSurgeryDate(Date surgeryDate) { this.surgeryDate = surgeryDate; }

    @Override
    public String toString() {
        return "TreatmentModel{" +
               "treatmentId=" + treatmentId +
               ", appointmentId=" + appointmentId +
               ", diagnosis='" + diagnosis + '\'' +
               ", treatmentNotes='" + treatmentNotes + '\'' +
               ", prescription='" + prescription + '\'' +
               ", surgeryDate=" + surgeryDate +
               '}';
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
    }
}
