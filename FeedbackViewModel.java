package com.dhristi.model;
import com.dhristi.model.FeedbackViewModel;

public class FeedbackViewModel {
    private int feedbackId;
    private int serviceRating;
    private String feedbackMessage;
    private String feedbackStatus;
    private String patientName;
    private String date;

    // Getters and Setters
    public int getFeedbackId() { return feedbackId; }
    public void setFeedbackId(int feedbackId) { this.feedbackId = feedbackId; }

    public int getServiceRating() { return serviceRating; }
    public void setServiceRating(int serviceRating) { this.serviceRating = serviceRating; }

    public String getFeedbackMessage() { return feedbackMessage; }
    public void setFeedbackMessage(String feedbackMessage) { this.feedbackMessage = feedbackMessage; }

    public String getFeedbackStatus() { return feedbackStatus; }
    public void setFeedbackStatus(String feedbackStatus) { this.feedbackStatus = feedbackStatus; }

    public String getPatientName() { return patientName; }
    public void setPatientName(String patientName) { this.patientName = patientName; }

    public String getDate() { return date; }
    public void setDate(String date) { this.date = date; }
}
