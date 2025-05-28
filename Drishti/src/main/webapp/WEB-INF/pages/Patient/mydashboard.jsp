<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.dhristi.model.PatientModel" %>
<%
    PatientModel user = (PatientModel) session.getAttribute("loggedUser");
    if (user == null) {
        response.sendRedirect(request.getContextPath() + "/login");
        return;
    }

    int age = user.getAge();
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Patient Dashboard - Dhristi Eye Hospital</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/css/Patientcss/dashboard.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
  <div class="sidebar">
    <h2>My Dashboard</h2>
    <a href="${pageContext.request.contextPath}/PatientDashboard" class="active"><i class="fas fa-chart-line"></i> My Dashboard</a>
    <a href="${pageContext.request.contextPath}/Patient/myappointment"><i class="fas fa-user-md"></i> My Appointments</a>
    <a href="${pageContext.request.contextPath}/Patient/BookAppointment"><i class="fas fa-calendar-check"></i> Book Appointments</a>
<<<<<<< HEAD
    <a href="${pageContext.request.contextPath}/Patient/mytreatments"><i class="fas fa-notes-medical"></i> My Treatments</a>
=======
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
    <a href="${pageContext.request.contextPath}/Patient/feedback"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Patient/profile"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <main class="main-content">
    <div class="report-card overview-card">
      <div class="dashboard-header"><i class="fas fa-chart-line"></i> Welcome to your Dashboard!</div>

      <h5>Patient Overview</h5>
      <div class="overview-grid">
        <div class="overview-item"><strong><i class="fas fa-user" style="color: #2ea6db;"></i> Full Name</strong><br/><%= user.getName() %></div>
        <div class="overview-item"><strong><i class="fas fa-id-badge" style="color: #9b59b6;"></i> Patient ID</strong><br/>P<%= user.getPatientId() %></div>
        <div class="overview-item">
  		<strong>Age / Gender</strong><br/><%= user.getAge() > 0 ? user.getAge() : "" %>  <%= user.getGender() != null ? user.getGender() : "" %>
		</div>
        
        <div class="overview-item">
  		<strong><i class="fas fa-tint" style="color: #e74c3c;"></i> Blood Group</strong><br/><%= user.getBloodGroup() != null ? user.getBloodGroup() : "" %>
		</div>
		
        <div class="overview-item">
  		<strong><i class="fas fa-phone-alt" style="color: #27ae60;"></i> Contact Info</strong><br/>
  		<%= user.getPhone() != null ? user.getPhone() : "" %>
		</div>
		
        <div class="overview-item">
  		<strong><i class="fas fa-map-marker-alt" style="color: #f39c12;"></i> Address</strong><br/>
  		<%= user.getAddress() != null ? user.getAddress() : "" %>
		</div>
        
      </div>

      <div class="chart-container">
        <h2>General Announcements</h2>
        <p>📅 Free Eye Checkup Camp – May 25 to May 30
        <br/>
           📅 Clinic Closed – June 5 (Public Holiday)<br/>
           🔬 New Contact Lens Fitting Service</p>
      </div>

      <div class="chart-container">
        <h2>Health Tips</h2>
        <p>🧘 Stay hydrated and take regular screen breaks.<br/>
           👁️ Visit your ophthalmologist every 6 months.</p>
      </div>
    </div>
  </main>
</body>
</html>
