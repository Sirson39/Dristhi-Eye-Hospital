package com.dhristi.model;

import java.util.Date;

/**
 * Represents a patient in the Eye Hospital Management System.
 */
public class PatientModel {
    private int patientId;
    private String name;
    private Date dob;
    private String gender;
    private String email;
    private String phone;
    private String address;
    private String passwordHash;

    /**
     * Default constructor
     */
    public PatientModel() { }

    /**
     * Parameterized constructor
     * @param patientId    unique ID of the patient
     * @param name         full name
     * @param dob          date of birth
     * @param gender       gender (Male, Female, Other)
     * @param email        email address
     * @param phone        contact number
     * @param address      residential address
     * @param passwordHash hashed password for authentication
     */
    public PatientModel(int patientId, String name, Date dob, String gender,
                        String email, String phone, String address, String passwordHash) {
        this.patientId = patientId;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.passwordHash = passwordHash;
    }

    // Getters & Setters
    public int getPatientId() {
        return patientId;
    }
    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public Date getDob() {
        return dob;
    }
    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    public String getPasswordHash() {
        return passwordHash;
    }
    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }

    @Override
    public String toString() {
        return "PatientModel{" +
               "patientId=" + patientId +
               ", name='" + name + '\'' +
               ", dob=" + dob +
               ", gender='" + gender + '\'' +
               ", email='" + email + '\'' +
               ", phone='" + phone + '\'' +
               ", address='" + address + '\'' +
               '}';
    }
}
