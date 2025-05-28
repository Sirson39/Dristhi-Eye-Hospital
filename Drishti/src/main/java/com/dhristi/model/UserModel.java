package com.dhristi.model;

public class UserModel {
    private int userId;
    private String name;
    private String email;
<<<<<<< HEAD
    private String phoneNumber;
    private String userRole;

    // Constructors
    public UserModel() {}

    public UserModel(int userId, String name, String email, String phoneNumber, String userRole) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.userRole = userRole;
    }

    // Getters and setters
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }
    @Override
    public String toString() {
        return "UserModel{" +
                "userId=" + userId +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", role='" + userRole + '\'' +
                '}';
    }
=======
    private String role; // patient / doctor

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
}
