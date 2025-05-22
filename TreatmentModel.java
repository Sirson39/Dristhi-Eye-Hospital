package com.dhristi.model;

import java.util.Date;

/**
 * Represents a treatment record linked to an appointment.
 */
public class TreatmentModel {
    private int treatmentId;
    private int appointmentId;
    private String diagnosis;
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
    }
}
