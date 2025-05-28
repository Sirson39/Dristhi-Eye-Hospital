package com.dhristi.model;

public class AppointmentModel {
    private int appointmentId;
    private String appointmentDate;
    private String appointmentReason;
    private String appointmentStatus;
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
    private String dept;
    private String patientName;
  

    // Getters and Setters
    public int getAppointmentId() { return appointmentId; }
    public void setAppointmentId(int appointmentId) { this.appointmentId = appointmentId; }

    public String getAppointmentDate() { return appointmentDate; }
    public void setAppointmentDate(String appointmentDate) { this.appointmentDate = appointmentDate; }

    public String getAppointmentReason() { return appointmentReason; }
    public void setAppointmentReason(String appointmentReason) { this.appointmentReason = appointmentReason; }

    public String getAppointmentStatus() { return appointmentStatus; }
    public void setAppointmentStatus(String appointmentStatus) { this.appointmentStatus = appointmentStatus; }

    public String getDept() { return dept; }
    public void setDept(String dept) { this.dept = dept; }
   

    public String getPatientName() { return patientName; }
    public void setPatientName(String patientName) { this.patientName = patientName; }
    
    public String getPatientName1() { return patientName; }
    public void setPatientName1(String patientName) { this.patientName = patientName; }
    }

<<<<<<< HEAD
=======
=======
    private String time;
    private String dept;
    private String patientName;

    // Constructors
    public AppointmentModel() {
        // No-arg constructor
    }

    public AppointmentModel(String appointmentDate, String appointmentReason) {
        super();
        this.appointmentDate = appointmentDate;
        this.appointmentReason = appointmentReason;
    }

    // Getters
    public int getAppointmentId() {
        return appointmentId;
    }

    public String getAppointmentDate() {
        return appointmentDate;
    }

    public String getAppointmentReason() {
        return appointmentReason;
    }

    public String getAppointmentStatus() {
        return appointmentStatus;
    }

    public String getTime() {
        return time;
    }

    public String getDept() {
        return dept;
    }

    public String getPatientName() {
        return patientName;
    }

    // Setters
    public void setAppointmentId(int appointmentId) {
        this.appointmentId = appointmentId;
    }

    public void setAppointmentDate(String appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

    public void setAppointmentReason(String appointmentReason) {
        this.appointmentReason = appointmentReason;
    }

    public void setAppointmentStatus(String appointmentStatus) {
        this.appointmentStatus = appointmentStatus;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    // Optional aliases for flexibility
    public void setDate(String date) {
        this.appointmentDate = date;
    }

    public void setReason(String reason) {
        this.appointmentReason = reason;
    }

    public void setStatus(String status) {
        this.appointmentStatus = status;
    }
}
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
