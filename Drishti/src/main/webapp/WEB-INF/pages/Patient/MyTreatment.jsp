<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Treatments – Dhristi Eye Hospital</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
<style>
  @charset "UTF-8";
/* My Treatments Page Styling */

*{
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
  font-family: 'Segoe UI', sans-serif;
  }
  
body {
  background-color: #f4f4f4;
  display: flex;
}
.sidebar {
  position: fixed;
  top: 0;
  left: 0;
  width: 250px;
  height: 100vh; /* Full viewport height */
  background-color: #135fa0;
  color: white;
  padding: 2rem 1rem;
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
}

/* Sidebar Title */
.sidebar h2 {
  margin-bottom: 2rem;
  font-size: 1.5rem;
  text-align: center;
  font-weight: 600;
}

/* Sidebar Links */
.sidebar a {
  display: flex;
  align-items: center;
  gap: 10px;
  color: white;
  text-decoration: none;
  padding: 1rem;
  margin-bottom: 1rem;
  border-radius: 8px;
  transition: background-color 0.3s;
  font-size: 1rem; /* Adjusted for better readability */
}

.sidebar a:hover,
.sidebar a.active {
  background-color: #2ea6db;
}

/* Sidebar Icons */
.sidebar i {
  font-size: 1rem; /* Consistent icon size */
}

/* Main Content shifted to the right of Sidebar */
.main-content {
  margin-left: 250px;
  flex: 1;
  padding: 2rem;
  background-color: #f4f4f4;
  min-height: 100vh;
  box-sizing: border-box;
}
.page-header {
  font-size: 2rem;
  color: #135fa0;
  margin-bottom: 1.5rem;
  font-weight: bold;
}

.report-card {
  background: #fff;
  border-radius: 12px;
  box-shadow: 0 4px 10px rgba(0,0,0,0.1);
  padding: 2rem;
}

.treatment-card {
  border: 1px solid #ccc;
  border-radius: 8px;
  padding: 1rem;
  margin-bottom: 1rem;
  background: #fafafa;
}

.treatment-card h4 {
  margin-top: 0.5rem;
  font-size: 1.2rem;
  color: #135fa0;
  font-weight: bold;
}

.treatment-card p {
  font-size: 1rem;
  color: #333;
  margin: 0.3rem 0;
}

.medication-list {
  margin-top: 0.5rem;
  background: #f0f0f0;
  border-radius: 6px;
  padding: 0.5rem 1rem;
}

.medication-list p {
  margin: 0.2rem 0;
  font-size: 0.95rem;
}

.medication-list hr {
  border: none;
  border-top: 1px solid #ccc;
  margin: 0.5rem 0;
}

@media (max-width: 768px) {
  .sidebar {
    display: none;
  }
  .main-content {
    margin: 0;
  }
}
  
</style>
</head>

<body>

<div class="sidebar">
    <h2>My Dashboard</h2>
    <a href="${pageContext.request.contextPath}/PatientDashboard"><i class="fas fa-chart-line"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/Patient/myappointment"><i class="fas fa-user-md"></i> My Appointments</a>
    <a href="${pageContext.request.contextPath}/Patient/BookAppointment" ><i class="fas fa-calendar-check"></i> Book Appointment</a>
    <a href="${pageContext.request.contextPath}/Patient/mytreatments" class="active"><i class="fas fa-notes-medical"></i> My Treatments</a>
    <a href="${pageContext.request.contextPath}/Patient/feedback"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Patient/profile"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>
<div class="main-content">
  <div class="page-header">My Treatments</div>
  <div class="report-card">

    <c:if test="${empty treatments}">
      <p>No treatments found for you.</p>
    </c:if>

    <c:forEach var="t" items="${treatments}">
      <div class="treatment-card">
        <h4><i class="fas fa-notes-medical" style="color: #2ea6db;"></i> Diagnosis / Condition</h4>
        <p>${t.diagnosisConditionTreated}</p>

        <h4><i class="fas fa-pills" style="color: #e74c3c;"></i> Prescribed Treatment Type</h4>
        <p>${t.prescribedTreatmentType}</p>

        <h4><i class="fas fa-vials" style="color: #c4e80c;"></i> Test Recommendations</h4>
        <p>${t.testRecommendations}</p>

        <c:if test="${not empty t.medications}">
          <h4><i class="fas fa-capsules" style="color: #23c6df;"></i> Medications</h4>
          <div class="medication-list">
            <c:forEach var="med" items="${t.medications}">
              <p><strong>Name:</strong> ${med.medicineName}</p>
              <p><strong>Dosage:</strong> ${med.medicineDosage}</p>
              <p><strong>Duration:</strong> ${med.mediDuration}</p>
              <p><strong>Instructions:</strong> ${med.medInstruction}</p>
              <hr/>
            </c:forEach>
          </div>
        </c:if>
      </div>
    </c:forEach>
  </div>
</div>
</body>
</html>
