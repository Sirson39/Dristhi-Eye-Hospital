<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <a href="${pageContext.request.contextPath}/PatientDashboard.jsp" class="active"><i class="fas fa-chart-line"></i> My Dashboard</a>
    <a href="${pageContext.request.contextPath}/testreport.jsp"><i class="fas fa-notes-medical"></i> Test Reports</a>
    <a href="${pageContext.request.contextPath}/myappointment.jsp"><i class="fas fa-user-md"></i> My Appointments</a>
    <a href="${pageContext.request.contextPath}/BookAppointment.jsp"><i class="fas fa-calendar-check"></i> Book Appointments</a>
    <a href="${pageContext.request.contextPath}/Billing.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/feedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/myprofile.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <main class="main-content">

    <div class="report-card overview-card">
      <div class="dashboard-header"><i class="fas fa-chart-line"></i> Welcome to your Dashboard!</div>

      <h5>Patient Overview</h5>
      <div class="overview-grid">
        <div class="overview-item"><strong><i class="fas fa-user" style="color: #2ea6db;"></i> Full Name</strong><br/>Sita Rai</div>
        <div class="overview-item"><strong><i class="fas fa-id-badge" style="color: #9b59b6;"></i> Patient ID</strong><br/>P003</div>
        <div class="overview-item"><strong><i class="fas fa-venus-mars" style="color: #e91e63;"></i> Age / Gender</strong><br/>33 / Female</div>
        <div class="overview-item"><strong><i class="fas fa-tint" style="color: #e74c3c;"></i> Blood Group</strong><br/>A+</div>
        <div class="overview-item"><strong><i class="fas fa-phone-alt" style="color: #27ae60;"></i> Contact Info</strong><br/>+977 9814567890</div>
        <div class="overview-item"><strong><i class="fas fa-map-marker-alt" style="color: #f39c12;"></i> Address</strong><br/>Lalitpur</div>
        <div class="overview-item"><strong>Registration Date</strong><br/><span>2024‑01‑15</span></div>
        <div class="overview-item"><strong><i class="fas fa-user-md" style="color: #135fa0;"></i> Doctors Consulted</strong><br/>5</div>
        <div class="overview-item"><strong><i class="fas fa-file-medical" style="color: #2ea6db;"></i> Total Test Reports</strong><br/>12</div>
        <div class="overview-item"><strong><i class="fas fa-comment-dots" style="color: #e91e63;"></i> Pending Feedback</strong><br/>1</div>
      </div>

      <div class="chart-container">
        <h2>Recent Test Reports</h2>
        <ul>
          <li><i class="fas fa-eye"></i> Retina Scan – March 2025 – <a href="#"><i class="fas fa-file"></i></a></li>
          <li><i class="fas fa-flask"></i> Eye Pressure Test – Feb 2025 – <a href="#"><i class="fas fa-file"></i></a></li>
          <li><i class="fas fa-chart-line"></i> Vision Acuity – Jan 2025 – <a href="#"><i class="fas fa-file"></i></a></li>
        </ul>
      </div>

      <div class="chart-container">
        <h2>Upcoming Appointment</h2>
        <p>📅 April 20, 2025 - 11:30 AM<br/>
           👨‍⚕️ Dr. Suman Bista - Retina Checkup<br/>
           📍 Room 204, Dhristi Eye Hospital</p>
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
