package com.dhristi.model;

import java.util.Date;
import java.time.LocalTime;

/**
 * Represents an appointment booking in the system.
 */
public class AppointmentModel {

    private int appointmentId;
    private int patientId;
    private int doctorId;
    private Date appointmentDate;
    private LocalTime appointmentTime;
    private String status;

    /** Default constructor */
    public AppointmentModel() {
    }

    /**
     * Parameterized constructor
     * @param appointmentId    unique ID of the appointment
     * @param patientId        ID of the patient booking the appointment
     * @param doctorId         ID of the doctor assigned
     * @param appointmentDate  date of the appointment
     * @param appointmentTime  time of the appointment
     * @param status           current status (e.g. Booked, Completed)
     */
    public AppointmentModel(int appointmentId, int patientId, int doctorId,
            Date appointmentDate, LocalTime appointmentTime, String status) {
        this.appointmentId = appointmentId;
        this.patientId = patientId;
        this.doctorId = doctorId;
        this.appointmentDate = appointmentDate;
        this.appointmentTime = appointmentTime;
        this.status = status;
    }

    // Getters & Setters
    public int getAppointmentId() {
        return appointmentId;
    }
    public void setAppointmentId(int appointmentId) {
        this.appointmentId = appointmentId;
    }

    public int getPatientId() {
        return patientId;
    }
    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public int getDoctorId() {
        return doctorId;
    }
    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public Date getAppointmentDate() {
        return appointmentDate;
    }
    public void setAppointmentDate(Date appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

    public LocalTime getAppointmentTime() {
        return appointmentTime;
    }
    public void setAppointmentTime(LocalTime appointmentTime) {
        this.appointmentTime = appointmentTime;
    }

    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "AppointmentModel{" +
                "appointmentId=" + appointmentId +
                ", patientId=" + patientId +
                ", doctorId=" + doctorId +
                ", appointmentDate=" + appointmentDate +
                ", appointmentTime=" + appointmentTime +
                ", status='" + status + '\'' +
                '}';
    }
}
