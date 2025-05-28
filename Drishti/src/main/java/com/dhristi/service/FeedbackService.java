package com.dhristi.service;

import com.dhristi.config.DbConfig;
import com.dhristi.model.FeedbackViewModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FeedbackService {
	
	public boolean deleteFeedback(int feedbackId) {
	    String deleteMap = "DELETE FROM user_feedback WHERE feedbackId = ?";
	    String deleteFeedback = "DELETE FROM feedback WHERE feedbackId = ?";

	    try (Connection conn = DbConfig.getDbConnection()) {
	        conn.setAutoCommit(false);

	        try (PreparedStatement ps1 = conn.prepareStatement(deleteMap);
	             PreparedStatement ps2 = conn.prepareStatement(deleteFeedback)) {

	            ps1.setInt(1, feedbackId);
	            ps1.executeUpdate();

	            ps2.setInt(1, feedbackId);
	            ps2.executeUpdate();

	            conn.commit();
	            return true;

	        } catch (Exception e) {
	            conn.rollback();
	            e.printStackTrace();
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return false;
	}


    // ✅ Submit feedback from patient
    public boolean submitFeedback(int patientId, int doctorId, int rating, String message) {
        try (Connection conn = DbConfig.getDbConnection()) {

            String insertFeedback = "INSERT INTO feedback(serviceRating, feedbackMessage) VALUES (?, ?)";
            PreparedStatement ps = conn.prepareStatement(insertFeedback, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, rating);
            ps.setString(2, message);
            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                int feedbackId = rs.getInt(1);

                String insertMap = "INSERT INTO user_feedback(userId, feedbackId, receiverId, feedbackStatus) VALUES (?, ?, ?, 'Pending')";
                PreparedStatement ps2 = conn.prepareStatement(insertMap);
                ps2.setInt(1, patientId);
                ps2.setInt(2, feedbackId);
                ps2.setInt(3, doctorId);
                ps2.executeUpdate();

                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    // ✅ Get all feedbacks received by a doctor
    public List<FeedbackViewModel> getFeedbacksForDoctor(int doctorId) {
        List<FeedbackViewModel> list = new ArrayList<>();

        String sql = 
        		  "SELECT f.feedbackId, f.serviceRating, f.feedbackMessage, f.created_at, " +
        		  "uf.feedbackStatus, u.name AS patientName " +
        		  "FROM user_feedback uf " +
        		  "JOIN feedback f ON uf.feedbackId = f.feedbackId " +
        		  "JOIN user u ON uf.userId = u.userId " +
        		  "WHERE uf.receiverId = ? " +
        		  "ORDER BY f.created_at DESC";


        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, doctorId);
            ResultSet rs = stmt.executeQuery();
            System.out.println("Feedback query executed for doctorId: " + doctorId);


            while (rs.next()) {
                FeedbackViewModel f = new FeedbackViewModel();
                f.setFeedbackId(rs.getInt("feedbackId"));
                f.setServiceRating(rs.getInt("serviceRating"));
                f.setFeedbackMessage(rs.getString("feedbackMessage"));
                f.setFeedbackStatus(rs.getString("feedbackStatus"));
                f.setPatientName(rs.getString("patientName"));
                f.setDate(rs.getTimestamp("created_at").toString());

                list.add(f);
                System.out.println("Fetched: " + rs.getString("feedbackMessage"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
