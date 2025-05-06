<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Patient Record – Dhrishti Eye Hospital</title>

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Custom CSS -->
  <link href="${pageContext.request.contextPath}/css/Doctorcss/PatientRec.css" rel="stylesheet"/>
</head>
<body>
  <!-- SIDEBAR -->
  <div class="sidebar">
    <nav>
      <a href="${pageContext.request.contextPath}/DoctorDashboard.jsp"><i class="fas fa-home"></i> Dashboard</a>
      <a href="${pageContext.request.contextPath}/AppointmentSchedule.jsp"><i class="fas fa-calendar-alt"></i> Appointment Schedule</a>
      <a href="${pageContext.request.contextPath}/PatientRecord.jsp" class="active"><i class="fas fa-id-card"></i> Patient Records</a>
      <a href="${pageContext.request.contextPath}/AddTreatment.jsp"><i class="fas fa-procedures"></i> Add Treatment</a>
      <a href="${pageContext.request.contextPath}/VisionTests.jsp"><i class="fas fa-eye"></i> Vision Tests</a>
      <a href="${pageContext.request.contextPath}/ProfileSettings.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
    </nav>
  </div>

  <!-- MAIN CONTENT -->
  <div class="main-content">
    <!-- Page header -->
    <div class="page-header">Patient Record</div>

    <!-- Patient Overview -->
    <div class="report-card overview-card">
      <h5>Patient Overview</h5>
      <div class="overview-grid">
        <div class="overview-item"><strong><i class="fas fa-user" style="color: #2ea6db;"></i> Full Name</strong><br/>Sita Lama</div>
        <div class="overview-item"><strong><i class="fas fa-id-badge" style="color: #9b59b6;"></i> Patient ID</strong><br/>P-1024</div>
        <div class="overview-item"><strong><i class="fas fa-venus-mars" style="color: #e91e63;"></i> Age / Gender</strong><br/>29 / Female</div>
        <div class="overview-item"><strong><i class="fas fa-tint" style="color: #e74c3c;"></i> Blood Group</strong><br/>A+</div>
        <div class="overview-item"><strong><i class="fas fa-phone-alt" style="color: #27ae60;"></i> Contact Info</strong><br/>+977 980190889</div>
        <div class="overview-item"><strong><i class="fas fa-map-marker-alt" style="color: #f39c12;"></i> Address</strong><br/>Kathmandu, Bagmati, 44600</div>
        <div class="overview-item"><strong>Registration Date</strong><br/><span>2024-01-15</span></div>
        <div class="overview-item"><strong>Assigned Doctor</strong><br/><span>Dr. Aayush Karki</span></div>
      </div>
    </div>

    <!-- Medical History -->
    <div class="report-card history-card">
      <h5>Medical History</h5>
      <div class="table-wrapper">
        <table class="appointments-table">
          <thead>
            <tr><th>Date</th><th>Condition</th><th>Notes</th><th>Doctor</th></tr>
          </thead>
          <tbody>
            <tr><td>2024-08-02</td><td>Eye Irritation</td><td>Mild redness, itching</td><td>Dr. A. Karki</td></tr>
            <tr><td>2024-10-12</td><td>Vision Blurry</td><td>Possible refractive error</td><td>Dr. A. Karki</td></tr>
          </tbody>
        </table>
      </div>
    </div>

    <!-- Visit History / Consultation Records -->
    <div class="report-card visit-card">
      <h5>Visit History / Consultation Records</h5>

      <!-- Search & Filter -->
      <div class="filter-controls">
        <label>Date From: <input type="date" id="fromDate"/></label>
        <label>Date To: <input type="date" id="toDate"/></label>
        <label>Visit Type: <select><option>All</option><option>Test</option><option>Follow‑up</option><option>Surgery</option></select></label>
        <label>Doctor: <select><option>All</option><option>Dr. A. Karki</option><option>Dr. B. Sharma</option></select></label>
        <button>Filter</button>
      </div>

      <div class="table-wrapper">
        <table class="appointments-table">
          <thead>
            <tr><th>Visit Date & Time</th><th>Chief Complaint</th><th>Observations</th><th>Diagnosis</th><th>Treatment</th><th>Next Follow‑up</th><th>Files</th></tr>
          </thead>
          <tbody>
            <tr><td>2025-01-10 09:30</td><td>Eye Pain</td><td>Redness, tearing</td><td>Conjunctivitis</td><td>Antibiotic drops</td><td>2025-01-17</td><td class="files"><i class="fas fa-file-medical"></i></td></tr>
            <tr><td>2025-02-25 14:00</td><td>Routine Check</td><td>Normal</td><td>Healthy</td><td>None</td><td>—</td><td class="files"><i class="fas fa-file-medical"></i></td></tr>
          </tbody>
        </table>
      </div>
    </div>

  </div>
</body>
</html>