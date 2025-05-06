package com.dhristi.model;

import java.util.Date;

/**
 * Represents a vision test record for a patient.
 */
public class VisionTestModel {
    private int testId;
    private int patientId;
    private Date testDate;
    private String testResults;
    private String doctorComments;
    private int interpretedBy;

    /** Default constructor */
    public VisionTestModel() { }

    /**
     * Parameterized constructor
     * @param testId          unique ID of the vision test
     * @param patientId       ID of the patient being tested
     * @param testDate        date of the vision test
     * @param testResults     results of the test
     * @param doctorComments  comments by the interpreting doctor
     * @param interpretedBy   ID of the doctor who interpreted the test
     */
    public VisionTestModel(int testId, int patientId, Date testDate,
                           String testResults, String doctorComments, int interpretedBy) {
        this.testId = testId;
        this.patientId = patientId;
        this.testDate = testDate;
        this.testResults = testResults;
        this.doctorComments = doctorComments;
        this.interpretedBy = interpretedBy;
    }

    // Getters & Setters
    public int getTestId() { return testId; }
    public void setTestId(int testId) { this.testId = testId; }

    public int getPatientId() { return patientId; }
    public void setPatientId(int patientId) { this.patientId = patientId; }

    public Date getTestDate() { return testDate; }
    public void setTestDate(Date testDate) { this.testDate = testDate; }

    public String getTestResults() { return testResults; }
    public void setTestResults(String testResults) { this.testResults = testResults; }

    public String getDoctorComments() { return doctorComments; }
    public void setDoctorComments(String doctorComments) { this.doctorComments = doctorComments; }

    public int getInterpretedBy() { return interpretedBy; }
    public void setInterpretedBy(int interpretedBy) { this.interpretedBy = interpretedBy; }

    @Override
    public String toString() {
        return "VisionTestModel{" +
               "testId=" + testId +
               ", patientId=" + patientId +
               ", testDate=" + testDate +
               ", testResults='" + testResults + '\'' +
               ", doctorComments='" + doctorComments + '\'' +
               ", interpretedBy=" + interpretedBy +
               '}';
    }
}
