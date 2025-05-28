<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>My Appointments – Dhristi Eye Hospital</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Patientcss/myappointment.css" />
  <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"integrity="sha512-...your-integrity-key..."crossorigin="anonymous"  referrerpolicy="no-referrer" />
<style> 
  .btn-cancel {
    background-color: #e74c3c; /* Red */
    color: white;
    border: none;
    padding: 8px 16px;
    border-radius: 6px;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .btn-cancel:hover {
    background-color: #c0392b;
  }

  .btn-cancel[disabled] {
    background-color: #aaa;
    cursor: not-allowed;
    opacity: 0.6;
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

  <div class="sidebar">
    <h2>My Dashboard</h2>
    <a href="${pageContext.request.contextPath}/PatientDashboard"><i class="fas fa-chart-line"></i> My Dashboard</a>
    <a href="${pageContext.request.contextPath}/Patient/myappointment"class="active"><i class="fas fa-user-md"></i> My Appointments</a>
    <a href="${pageContext.request.contextPath}/Patient/BookAppointment"><i class="fas fa-calendar-check"></i> Book Appointments</a>
    <a href="${pageContext.request.contextPath}/Patient/mytreatments"><i class="fas fa-notes-medical"></i> My Treatments</a>
    <a href="${pageContext.request.contextPath}/Patient/feedback"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Patient/profile"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

<main class="main-content">
  <div class="dashboard-header"><i class="fas fa-user-md"></i> My Appointments</div>

<c:choose>
  <c:when test="${empty appointments}">
    <div style="text-align: center; margin-top: 100px;">
      <img src="https://cdn-icons-png.flaticon.com/512/4076/4076549.png" alt="No Appointments" width="150" style="opacity: 0.6;" />
      <h2 style="color: #2c3e50; margin-top: 20px;">No Appointments Found</h2>
      <p style="color: #777;">You haven't booked any appointments yet.</p>
      <a href="${pageContext.request.contextPath}/Patient/BookAppointment" class="btn-book-now" style="
        margin-top: 20px;
        display: inline-block;
        padding: 12px 24px;
        background-color: #2ea6db;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        font-weight: bold;
        transition: background-color 0.3s ease;
      ">Book Appointment</a>
    </div>
  </c:when>

  <c:otherwise>
    <c:forEach var="appt" items="${appointments}">
      <div class="appointment-card">
        <div class="appointment-info">
          <p><strong>Reason:</strong> ${appt.appointmentReason}</p>
          <p><i class="fa-regular fa-calendar"></i> Date: ${appt.appointmentDate}</p>
          <p><i class="fa-solid fa-heart-pulse"></i> Status: ${appt.appointmentStatus}</p>
        </div>
        <div class="appointment-actions">
          <form method="post" action="${pageContext.request.contextPath}/Patient/myappointment">
            <input type="hidden" name="appointmentId" value="${appt.appointmentId}" />
            <button type="submit" class="btn-cancel">Cancel</button>
          </form>
          
        </div>
      </div>
    </c:forEach>
  </c:otherwise>
</c:choose>


</main>
</body>
</html>
