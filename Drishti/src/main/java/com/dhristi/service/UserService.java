package com.dhristi.service;

import com.dhristi.config.DbConfig;
import com.dhristi.model.UserModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserService {

<<<<<<< HEAD
	public List<UserModel> getAllPatients() {
	    List<UserModel> patients = new ArrayList<>();
	    String sql = "SELECT userId, name, email, phoneNumber, userRole FROM User WHERE userRole = 'patient'";

	    try (Connection conn = DbConfig.getDbConnection();
	         PreparedStatement stmt = conn.prepareStatement(sql);
	         ResultSet rs = stmt.executeQuery()) {

	        while (rs.next()) {
	            UserModel user = new UserModel();
	            user.setUserId(rs.getInt("userId"));
	            user.setName(rs.getString("name"));
	            user.setEmail(rs.getString("email"));
	            user.setPhoneNumber(rs.getString("phoneNumber"));
	            patients.add(user);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return patients;
	}

=======
    // ✅ READ all patients
    public List<UserModel> getAllPatients() {
        List<UserModel> patients = new ArrayList<>();
        String sql = "SELECT userId, name, email, phoneNumber, userRole FROM User WHERE userRole = 'patient'";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                UserModel user = new UserModel(
                );
                patients.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return patients;
    }
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04

    // ✅ GET patient by ID
    public UserModel getUserById(int id) {
        UserModel user = null;
        String sql = "SELECT * FROM User WHERE userId = ? AND userRole = 'patient'";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                user = new UserModel(
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    // ✅ UPDATE patient
    public void updatePatient(UserModel user) {
        String sql = "UPDATE User SET name = ?, email = ?, phoneNumber = ? WHERE userId = ? AND userRole = 'patient'";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, user.getName());
            stmt.setString(2, user.getEmail());
<<<<<<< HEAD
            stmt.setString(3, user.getPhoneNumber());
=======
            stmt.setString(3, user.getPhone());
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
            stmt.setInt(4, user.getUserId());

            stmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public int getFirstDoctorId() {
        String sql = "SELECT userId FROM User WHERE userRole = 'doctor' LIMIT 1";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            if (rs.next()) {
                return rs.getInt("userId");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return -1; // or throw exception if no doctor found
    }

    // ✅ DELETE patient
    public void deleteUserById(int id) {
        String sql = "DELETE FROM User WHERE userId = ? AND userRole = 'patient'";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
