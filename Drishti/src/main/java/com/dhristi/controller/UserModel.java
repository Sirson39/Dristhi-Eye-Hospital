package com.dhristi.controller;

public class UserModel {
    private int userId;
    private String name;
    private String email;
    private String phoneNumber;
    private String password;
    private String userRole;

    // Constructor for inserting new users
    public UserModel(String name, String email, String phoneNumber, String password, String userRole) {
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.userRole = userRole;
    }

    // Constructor for fetching existing users (with userId)
    public UserModel(int userId, String name, String email, String phoneNumber, String password, String userRole) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.userRole = userRole;
    }
}



