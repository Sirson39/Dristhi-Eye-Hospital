<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Manage Doctors – Dhristi Eye Hospital</title>
  <!-- Font Awesome for icons -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Custom CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Admincss/ManageDoctor.css"/>
</head>
<body>
  <!-- Sidebar -->
  <div class="sidebar">
    <h2>Dhristi Admin</h2>
    <a href="${pageContext.request.contextPath}/AdminDashboard.jsp"><i class="fas fa-chart-line"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/ManageDoctors.jsp" class="active"><i class="fas fa-user-md"></i> Manage Doctors</a>
    <a href="${pageContext.request.contextPath}/ManagePatient.jsp"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="${pageContext.request.contextPath}/ManageAppointments.jsp"><i class="fas fa-calendar-check"></i> Appointments</a>
    <a href="${pageContext.request.contextPath}/ManageBilling.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/ManageFeedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Report.jsp"><i class="fas fa-chart-pie"></i> Reports</a>
    <a href="${pageContext.request.contextPath}/Profile.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <!-- Main content -->
  <div class="main-content">
    <div class="dashboard-header">Manage Doctors</div>

    <!-- Add New Doctor Button -->
    <button class="add-doctor-btn">
      <i class="fas fa-plus"></i> Add New Doctor
    </button>

    <!-- Doctor Cards -->
    <div class="doctor-cards">
      <!-- Card 1 -->
      <div class="doctor-card">
        <img src="${pageContext.request.contextPath}/images/Usha.jpeg" alt="Dr. Usha Chakrvarthy"/>
        <div class="info">
          <h3>Dr. Usha Chakrvarthy</h3>
          <p><strong>ID:</strong> D001</p>
          <p><strong>Specialty:</strong> Retinal Diseases Specialist</p>
          <p><strong>Phone:</strong> 9861047436</p>
          <p><strong>Email:</strong> ushachakra001@gmail.com</p>
        </div>
        <div class="actions">
          <button class="btn-edit"><i class="fas fa-edit"></i> Edit</button>
          <button class="btn-delete"><i class="fas fa-trash-alt"></i> Remove</button>
        </div>
      </div>
      <!-- Repeat similar blocks for other doctors or loop dynamically -->
      <div class="doctor-card">
        <img src="${pageContext.request.contextPath}/images/Natarajan.jpeg" alt="Dr. S.Natarajan"/>
        <div class="info">
          <h3>Dr. S.Natarajan</h3>
          <p><strong>ID:</strong> D002</p>
          <p><strong>Specialty:</strong> Vitreoretinal Surgeon</p>
          <p><strong>Phone:</strong> 9849111614</p>
          <p><strong>Email:</strong> snatarajan002@gmail.com</p>
        </div>
        <div class="actions">
          <button class="btn-edit"><i class="fas fa-edit"></i> Edit</button>
          <button class="btn-delete"><i class="fas fa-trash-alt"></i> Remove</button>
        </div>
      </div>
      <div class="doctor-card">
        <img src="${pageContext.request.contextPath}/images/Minas.jpg" alt="Dr. Minas Coroneo"/>
        <div class="info">
          <h3>Dr. Minas Coroneo</h3>
          <p><strong>ID:</strong> D003</p>
          <p><strong>Specialty:</strong> Corneal Surgeon</p>
          <p><strong>Phone:</strong> 9818170606</p>
          <p><strong>Email:</strong> minascoroneo003@gmail.com</p>
        </div>
        <div class="actions">
          <button class="btn-edit"><i class="fas fa-edit"></i> Edit</button>
          <button class="btn-delete"><i class="fas fa-trash-alt"></i> Remove</button>
        </div>
      </div>
      <!-- Additional doctor cards... -->
    </div>
  </div>
</body>
</html>
