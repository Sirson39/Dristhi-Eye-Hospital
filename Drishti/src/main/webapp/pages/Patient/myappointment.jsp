<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>My Appointments – Dhristi Eye Hospital</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Patientcss/myappointment.css" />
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
    integrity="sha512-...your-integrity-key..."
    crossorigin="anonymous"
    referrerpolicy="no-referrer"
  />
</head>
<body>

  <div class="sidebar">
    <h2>My Dashboard</h2>
    <a href="${pageContext.request.contextPath}/PatientDashboard.jsp"><i class="fas fa-chart-line"></i> My Dashboard</a>
    <a href="${pageContext.request.contextPath}/testreport.jsp"><i class="fas fa-notes-medical"></i> Test Reports</a>
    <a href="${pageContext.request.contextPath}/MyAppointments.jsp" class="active"><i class="fas fa-user-md"></i> My Appointments</a>
    <a href="${pageContext.request.contextPath}/BookAppointment.jsp"><i class="fas fa-calendar-check"></i> Book Appointments</a>
    <a href="${pageContext.request.contextPath}/Billing.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/Feedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/myprofile.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <main class="main-content">
    <div class="dashboard-header"><i class="fas fa-user-md"></i> My Appointments</div>

    <div class="appointment-card">
      <div class="appointment-info">
        <h2>Eye Checkup with Dr. Gautam</h2>
        <p><i class="fa-regular fa-calendar"></i> Date: April 20, 2025</p>
        <p><i class="fa-regular fa-clock"></i> Time: 10:30 AM</p>
        <p><i class="fa-solid fa-location-dot"></i> Location: Dhristi Eye Care, Kathmandu</p>
      </div>
      <div class="appointment-actions">
        <button class="view-btn"><i class="fa-solid fa-eye"></i> View</button>
        <button class="cancel-btn"><i class="fa-solid fa-xmark"></i> Cancel</button>
        <button class="reschedule-btn"><i class="fa-solid fa-calendar-plus"></i> Reschedule</button>
      </div>
    </div>

  </main>

</body>
</html>
