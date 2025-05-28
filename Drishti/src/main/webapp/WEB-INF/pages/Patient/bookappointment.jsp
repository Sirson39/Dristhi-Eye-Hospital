<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.dhristi.model.PatientModel" %>
<%
    PatientModel user = (PatientModel) session.getAttribute("loggedUser");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Book Appointment – Dhrishti</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Patientcss/bookappointment.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  
  <style>

  body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f5f6fa;
  }

  .main-content {
    margin-left: 260px;
    padding: 30px;
  }

  .dashboard-header {
    font-size: 24px;
    font-weight: bold;
    color: #1e6fa8;
    margin-bottom: 20px;
  }

  .form-card {
    background-color: #ffffff;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.07);
    max-width: 600px;
  }

  .form-card label {
    display: block;
    font-weight: 600;
    margin-bottom: 6px;
    color: #2c3e50;
  }

  .form-card input[type="date"],
  .form-card textarea {
    width: 100%;
    padding: 12px 14px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 15px;
    margin-bottom: 20px;
    transition: border-color 0.3s;
  }

  .form-card input:focus,
  .form-card textarea:focus {
    outline: none;
    border-color: #2980b9;
  }

  .btn-book {
    background-color: #3498db;
    color: #fff;
    border: none;
    padding: 12px 24px;
    border-radius: 8px;
    font-weight: 600;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s;
  }

  .btn-book:hover {
    background-color: #2c80b4;
  }

  .success-msg {
    color: green;
    font-weight: bold;
    margin-top: 15px;
  }

  .error-msg {
    color: red;
    font-weight: bold;
    margin-top: 15px;
  }

  
  .main-content {
    margin-left: 260px;
    padding: 30px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  }

  .dashboard-header {
    font-size: 24px;
    margin-bottom: 20px;
    font-weight: bold;
    color: #2c3e50;
  }

  .form-card {
    background-color: #ffffff;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    max-width: 600px;
  }

  .form-card label {
    display: block;
    margin-top: 15px;
    font-weight: 500;
  }

  .form-card input[type="text"],
  .form-card input[type="date"],
  .form-card textarea {
    width: 100%;
    padding: 10px 12px;
    margin-top: 6px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 16px;
  }

  .form-card textarea {
    resize: vertical;
  }

  .btn-book {
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #2ecc71;
    border: none;
    color: white;
    font-weight: bold;
    font-size: 16px;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .btn-book:hover {
    background-color: #27ae60;
  }

  .success-msg {
    color: green;
    font-weight: bold;
    margin-top: 10px;
  }

  .error-msg {
    color: red;
    font-weight: bold;
    margin-top: 10px;
  }
   
.sidebar {
    width: 250px;
    height: 100vh;
    background-color: #135fa0;
    color: white;
    padding: 2rem 1rem;
    position: fixed;
  }
  
  .sidebar h2 {
    margin-bottom: 2rem;
    font-size: 1.5rem;
    text-align: center;
  }
  
  .sidebar a {
    display: flex;
    align-items: center;
    gap: 10px;
    color: white;
    text-decoration: none;
    padding: 1rem;
    margin-bottom: 1rem;
    border-radius: 8px;
    transition: background 0.3s;
  }
  
  .sidebar a.active,
  .sidebar a:hover {
    background-color: #2ea6db;
  }</style>
</head>
<body>

  <!-- Sidebar -->
  <div class="sidebar">
    <h2>My Dashboard</h2>
    <a href="${pageContext.request.contextPath}/PatientDashboard"><i class="fas fa-chart-line"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/Patient/myappointment"><i class="fas fa-user-md"></i> My Appointments</a>
    <a href="${pageContext.request.contextPath}/Patient/BookAppointment" class="active"><i class="fas fa-calendar-check"></i> Book Appointment</a>
    <a href="${pageContext.request.contextPath}/Patient/mytreatments"><i class="fas fa-notes-medical"></i> My Treatments</a>
    <a href="${pageContext.request.contextPath}/Patient/feedback"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Patient/profile"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <!-- Main Content -->
  <div class="main-content">
  <div class="dashboard-header"><i class="fas fa-calendar-check"></i> Book an Appointment</div>

  <div class="form-card">
    <form method="post" action="${pageContext.request.contextPath}/Patient/BookAppointment">
      <label for="date">Select Date</label>
      <input type="date" id="date" name="date" required>

      <label for="reason">Reason for Appointment</label>
      <textarea id="reason" name="reason" rows="4" placeholder="Describe your concern..." required></textarea>

      <button type="submit" class="btn-book">Book Appointment</button>
    </form>

    <!-- ✅ Show success -->
    <c:if test="${param.success == '1'}">
      <p class="success-msg">
        <i class="fas fa-check-circle"></i> Appointment booked successfully!
        <br><a href="${pageContext.request.contextPath}/Patient/myappointment">View My Appointments</a>
      </p>
    </c:if>

    <!-- ❌ Show error -->
    <c:if test="${param.error == '1'}">
      <p class="error-msg">
        <i class="fas fa-times-circle"></i> Something went wrong. Please try again.
      </p>
    </c:if>
    <!-- -Shows time validation -->
    <c:if test="${param.past == '1'}">
  <p class="error-msg">
    <i class="fas fa-exclamation-circle"></i> You cannot book an appointment for a past date.
  </p>
</c:if>
    
  </div>
</div>
<script>
  // Set min date to today
  const dateInput = document.getElementById("date");
  const today = new Date().toISOString().split("T")[0];
  dateInput.setAttribute("min", today);
</script>

</body>
</html>
