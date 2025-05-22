package com.dhristi.model;

/**
 * Represents a doctor in the Eye Hospital Management System.
 */
public class DoctorModel {
    private int doctorId;
    private String name;
    private String email;
    private String phone;
    private String specialization;
    private String qualification;
    private String availableDays;
    private String availableTimes;
    private String passwordHash;

    /** Default constructor */
    public DoctorModel() { }

    /**
     * Parameterized constructor
     * @param doctorId       unique ID of the doctor
     * @param name           full name
     * @param email          email address
     * @param phone          contact number
     * @param specialization area of expertise
     * @param qualification  professional qualifications
     * @param availableDays  days available for appointments
     * @param availableTimes times available for appointments
     * @param passwordHash   hashed password for authentication
     */
    public DoctorModel(int doctorId, String name, String email, String phone,
                       String specialization, String qualification,
                       String availableDays, String availableTimes,
                       String passwordHash) {
        this.doctorId = doctorId;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.specialization = specialization;
        this.qualification = qualification;
        this.availableDays = availableDays;
        this.availableTimes = availableTimes;
        this.passwordHash = passwordHash;
    }

    // Getters & Setters
    public int getDoctorId() { return doctorId; }
    public void setDoctorId(int doctorId) { this.doctorId = doctorId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getSpecialization() { return specialization; }
    public void setSpecialization(String specialization) { this.specialization = specialization; }

    public String getQualification() { return qualification; }
    public void setQualification(String qualification) { this.qualification = qualification; }

    public String getAvailableDays() { return availableDays; }
    public void setAvailableDays(String availableDays) { this.availableDays = availableDays; }

    public String getAvailableTimes() { return availableTimes; }
    public void setAvailableTimes(String availableTimes) { this.availableTimes = availableTimes; }

    public String getPasswordHash() { return passwordHash; }
    public void setPasswordHash(String passwordHash) { this.passwordHash = passwordHash; }

    @Override
    public String toString() {
        return "DoctorModel{" +
               "doctorId=" + doctorId +
               ", name='" + name + '\'' +
               ", email='" + email + '\'' +
               ", phone='" + phone + '\'' +
               ", specialization='" + specialization + '\'' +
               ", qualification='" + qualification + '\'' +
               ", availableDays='" + availableDays + '\'' +
               ", availableTimes='" + availableTimes + '\'' +
               '}';
    }
}
