package com.dhristi.model;


/**
 * Represents a patient in the Eye Hospital Management System.
 */
public class PatientModel {
<<<<<<< HEAD
	private int patientId;
=======
    private int patientId;
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
    private String name;
    private String gender;
    private String email;
    private String phone;
    private String bloodGroup;
    private String address;
    private String passwordHash;
    private int age;
<<<<<<< HEAD
    private int appointmentId;
	private String userRole;
	private int userId;

=======
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d

    public PatientModel() { }

    // Getters & Setters
    public int getPatientId() {
        return patientId;
    }
<<<<<<< HEAD

=======
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
<<<<<<< HEAD
    
    public int getAppointmentId() {
        return appointmentId;
    }
    public String getUserRole() {
        return userRole;
    }

=======
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d

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

<<<<<<< HEAD
    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    public int getUserId() {
        return userId;
    }
    public void setUserId(int userId) {
        this.userId = userId;
    }
=======
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d

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
<<<<<<< HEAD
    public void setAppointmentId(int appointmentId) {
        this.appointmentId = appointmentId;
    }
    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }
    public String getPhone() {
        return phone;
    }

    public void setPhone1(String phone) {
        this.phone = phone;
    }

=======
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d

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