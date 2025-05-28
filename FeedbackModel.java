package com.dhristi.model;

/**
 * Represents a feedback entry left by a patient for a doctor.
 */
public class FeedbackModel {
    private int feedbackId;
    private int patientId;
    private int doctorId;
    private int rating;
    private String comments;
    private String status;

    /** Default constructor */
    public FeedbackModel() { }

    /**
     * Full constructor
     * @param feedbackId   unique ID of the feedback
     * @param patientId    ID of the patient who submitted
     * @param doctorId     ID of the doctor being reviewed
     * @param rating       rating score (1–5)
     * @param comments     free-text comments
     * @param status       status (e.g. Pending, Approved)
     */
    public FeedbackModel(int feedbackId, int patientId, int doctorId,
                         int rating, String comments, String status) {
        this.feedbackId = feedbackId;
        this.patientId  = patientId;
        this.doctorId   = doctorId;
        this.rating     = rating;
        this.comments   = comments;
        this.status     = status;
    }

    // Getters & Setters
    public int getFeedbackId() { return feedbackId; }
    public void setFeedbackId(int feedbackId) { this.feedbackId = feedbackId; }

    public int getPatientId() { return patientId; }
    public void setPatientId(int patientId) { this.patientId = patientId; }

    public int getDoctorId() { return doctorId; }
    public void setDoctorId(int doctorId) { this.doctorId = doctorId; }

    public int getRating() { return rating; }
    public void setRating(int rating) { this.rating = rating; }

    public String getComments() { return comments; }
    public void setComments(String comments) { this.comments = comments; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    @Override
    public String toString() {
        return "FeedbackModel{" +
               "feedbackId=" + feedbackId +
               ", patientId=" + patientId +
               ", doctorId=" + doctorId +
               ", rating=" + rating +
               ", comments='" + comments + '\'' +
               ", status='" + status + '\'' +
               '}';
    }
}