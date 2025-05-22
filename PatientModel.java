package com.dhristi.model;


/**
 * Represents a patient in the Eye Hospital Management System.
 */
public class PatientModel {
    private int patientId;
    private String name;
    private String gender;
    private String email;
    private String phone;
    private String bloodGroup;
    private String address;
    private String passwordHash;
    private int age;

    public PatientModel() { }

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

    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
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

    public String getBloodGroup() {
        return bloodGroup;
    }
    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
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
               ", age=" + age +
               ", gender='" + gender + '\'' +
               ", email='" + email + '\'' +
               ", phone='" + phone + '\'' +
               ", bloodGroup='" + bloodGroup + '\'' +
               ", address='" + address + '\'' +
               '}';
    }
}