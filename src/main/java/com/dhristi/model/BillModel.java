package com.dhristi.model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Represents a billing record for a patient appointment.
 */
public class BillModel {
    private int billId;
    private int patientId;
    private int appointmentId;
    private BigDecimal totalAmount;
    private String paymentStatus;
    private String paymentMethod;
    private String invoiceUrl;
    private Date paymentDate;

    public BillModel() { }

    public BillModel(int billId, int patientId, int appointmentId,
                     BigDecimal totalAmount, String paymentStatus,
                     String paymentMethod, String invoiceUrl, Date paymentDate) {
        this.billId = billId;
        this.patientId = patientId;
        this.appointmentId = appointmentId;
        this.totalAmount = totalAmount;
        this.paymentStatus = paymentStatus;
        this.paymentMethod = paymentMethod;
        this.invoiceUrl = invoiceUrl;
        this.paymentDate = paymentDate;
    }

    // Getters and setters
    public int getBillId() { return billId; }
    public void setBillId(int billId) { this.billId = billId; }

    public int getPatientId() { return patientId; }
    public void setPatientId(int patientId) { this.patientId = patientId; }

    public int getAppointmentId() { return appointmentId; }
    public void setAppointmentId(int appointmentId) { this.appointmentId = appointmentId; }

    public BigDecimal getTotalAmount() { return totalAmount; }
    public void setTotalAmount(BigDecimal totalAmount) { this.totalAmount = totalAmount; }

    public String getPaymentStatus() { return paymentStatus; }
    public void setPaymentStatus(String paymentStatus) { this.paymentStatus = paymentStatus; }

    public String getPaymentMethod() { return paymentMethod; }
    public void setPaymentMethod(String paymentMethod) { this.paymentMethod = paymentMethod; }

    public String getInvoiceUrl() { return invoiceUrl; }
    public void setInvoiceUrl(String invoiceUrl) { this.invoiceUrl = invoiceUrl; }

    public Date getPaymentDate() { return paymentDate; }
    public void setPaymentDate(Date paymentDate) { this.paymentDate = paymentDate; }

    @Override
    public String toString() {
        return "BillModel{" +
               "billId=" + billId +
               ", patientId=" + patientId +
               ", appointmentId=" + appointmentId +
               ", totalAmount=" + totalAmount +
               ", paymentStatus='" + paymentStatus + '\'' +
               ", paymentMethod='" + paymentMethod + '\'' +
               ", invoiceUrl='" + invoiceUrl + '\'' +
               ", paymentDate=" + paymentDate +
               '}';
    }
}
