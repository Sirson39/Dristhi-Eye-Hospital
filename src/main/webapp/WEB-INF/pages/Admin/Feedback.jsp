<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Manage Feedback – Dhristi Eye Hospital</title>

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Custom CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Admincss/Feedback.css"/>
</head>
<body>
  <!-- Sidebar -->
  <div class="sidebar">
    <h2>Dhristi Admin</h2>
    <a href="${pageContext.request.contextPath}/AdminDashboard.jsp"><i class="fas fa-chart-line"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/ManageDoctor.jsp"><i class="fas fa-user-md"></i> Manage Doctors</a>
    <a href="${pageContext.request.contextPath}/ManagePatient.jsp"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="${pageContext.request.contextPath}/ManageAppointments.jsp"><i class="fas fa-calendar-check"></i> Appointments</a>
    <a href="${pageContext.request.contextPath}/ManageBilling.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/ManageFeedback.jsp" class="active"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Report.jsp"><i class="fas fa-chart-pie"></i> Reports</a>
    <a href="${pageContext.request.contextPath}/Profile.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <!-- Main content -->
  <div class="main-content">
    <div class="dashboard-header">Feedback List</div>
    <div class="feedback-cards">
      <!-- Feedback Card 1 -->
      <div class="feedback-card">
        <div class="header">
          <div class="id">FB001</div>
          <div class="date">17-Apr-2025</div>
        </div>
        <div class="meta">
          <span class="patient">Anita Thapa</span>
          <span class="type">Doctor</span>
        </div>
        <div class="ratings">
          <div>
            <strong>Dr. Rating:</strong>
            <i class="fas fa-star"></i><i class="fas fa-star"></i>
            <i class="fas fa-star"></i><i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          </div>
          <div>
            <strong>Hospital:</strong>
            <i class="fas fa-star"></i><i class="fas fa-star"></i>
            <i class="fas fa-star"></i><i class="fas fa-star"></i>
          </div>
        </div>
        <div class="comments">
          “Wonderful bedside manner and clear explanations.”
        </div>
        <div class="footer">
          <span class="status status-reviewed">Reviewed</span>
          <div class="actions">
            <button><i class="fas fa-eye"></i> View</button>
            <button><i class="fas fa-reply"></i> Reply</button>
            <button><i class="fas fa-archive"></i> Archive</button>
            <button><i class="fas fa-trash-alt"></i> Delete</button>
          </div>
        </div>
      </div>

      <!-- Feedback Card 2 -->
      <div class="feedback-card">
        <div class="header">
          <div class="id">FB002</div>
          <div class="date">16-Apr-2025</div>
        </div>
        <div class="meta">
          <span class="patient">Ram Kumar</span>
          <span class="type">Service</span>
        </div>
        <div class="ratings">
          <div>
            <strong>Dr. Rating:</strong>
            <i class="fas fa-star"></i><i class="fas fa-star"></i>
            <i class="fas fa-star"></i><i class="fas fa-star"></i>
          </div>
          <div>
            <strong>Hospital:</strong>
            <i class="fas fa-star"></i><i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          </div>
        </div>
        <div class="comments">
          “Front‑desk was friendly but waited too long.”
        </div>
        <div class="footer">
          <span class="status status-pending">Pending</span>
          <div class="actions">
            <button><i class="fas fa-eye"></i> View</button>
            <button><i class="fas fa-reply"></i> Reply</button>
            <button><i class="fas fa-archive"></i> Archive</button>
            <button><i class="fas fa-trash-alt"></i> Delete</button>
          </div>
        </div>
      </div>

      <!-- Feedback Card 3 -->
      <div class="feedback-card">
        <div class="header">
          <div class="id">FB003</div>
          <div class="date">15-Apr-2025</div>
        </div>
        <div class="meta">
          <span class="patient">Sita Rai</span>
          <span class="type">Appointment</span>
        </div>
        <div class="ratings">
          <div>
            <strong>Dr. Rating:</strong>
            <i class="fas fa-star"></i><i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          </div>
          <div>
            <strong>Hospital:</strong>
            <i class="fas fa-star"></i><i class="fas fa-star"></i>
            <i class="fas fa-star"></i><i class="fas fa-star"></i>
          </div>
        </div>
        <div class="comments">
          “Appointment system is easy to use.”
        </div>
        <div class="footer">
          <span class="status status-flagged">Flagged</span>
          <div class="actions">
            <button><i class="fas fa-eye"></i> View</button>
            <button><i class="fas fa-reply"></i> Reply</button>
            <button><i class="fas fa-archive"></i> Archive</button>
            <button><i class="fas fa-trash-alt"></i> Delete</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
