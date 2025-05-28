package com.dhristi.model;

public class MedicationModel {
    private String medicineName;
    private String medicineDosage;
    private String mediDuration;
    private String medInstruction;

    // getters & setters
    public String getMedicineName() { return medicineName; }
    public void setMedicineName(String medicineName) { this.medicineName = medicineName; }
    public String getMedicineDosage() { return medicineDosage; }
    public void setMedicineDosage(String medicineDosage) { this.medicineDosage = medicineDosage; }
    public String getMediDuration() { return mediDuration; }
    public void setMediDuration(String mediDuration) { this.mediDuration = mediDuration; }
    public String getMedInstruction() { return medInstruction; }
    public void setMedInstruction(String medInstruction) { this.medInstruction = medInstruction; }
}
