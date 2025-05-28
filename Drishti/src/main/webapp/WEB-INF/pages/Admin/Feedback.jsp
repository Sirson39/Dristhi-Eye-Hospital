<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <style>
    .status-reviewed {
      background-color: #2ecc71;
      color: white;
    }
    .status-pending {
      background-color: #f1c40f;
      color: black;
    }
    .status-flagged {
      background-color: #e74c3c;
      color: white;
    }
    .fas.fa-star {
      color: gold;
    }
  </style>
</head>
<body>
  <!-- SIDEBAR -->
  <div class="sidebar">
    <nav>
        <h2>Doctor dashboard</h2>
 			 <a href="<%= request.getContextPath() %>/DoctorDashboard" class="active"><i class="fas fa-home"></i> Dashboard</a>
    <a href="<%= request.getContextPath() %>/appointments"><i class="fas fa-calendar-alt"></i> Appointments</a>
    <a href="<%= request.getContextPath() %>/add-treatment"><i class="fas fa-procedures"></i> Add Treatment</a>
    <a href="<%= request.getContextPath() %>/manage-patients"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="<%= request.getContextPath() %>/Admin/feedbacks"><i class="fas fa-comments"></i> Feedback</a>
    <a href="<%= request.getContextPath() %>/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
	</nav>  
  </div>

  <!-- Main content -->
  <div class="main-content">
    
    <div class="feedback-cards">

      <c:forEach var="f" items="${feedbackList}">
        <div class="feedback-card">
          <div class="header">
            <div class="id">FB${f.feedbackId}</div>
            <div class="date">${f.date}<div class="dashboard-header">Feedback List</div></div>
          </div>

          <div class="meta">
            <span class="patient">${f.patientName}</span>
            <span class="type">Patient</span>
          </div>

          <div class="ratings">
            <div>
              <strong>Overall Rating:</strong>
              <c:forEach begin="1" end="${f.serviceRating}">
                <i class="fas fa-star"></i>
              </c:forEach>
            </div>
          </div>

          <div class="comments">
            <c:out value="${f.feedbackMessage}" />
          </div>

          <div class="footer">
            <span class="status status-${f.feedbackStatus.toLowerCase()}">${f.feedbackStatus}</span>
            <form method="post" action="${pageContext.request.contextPath}/Deletefeedback" style="display:inline;">
              <input type="hidden" name="feedbackId" value="${f.feedbackId}" />
              <button type="submit"><i class="fas fa-trash-alt"></i> Delete</button>
            </form>
          </div>
        </div>
      </c:forEach>

      <c:if test="${empty feedbackList}">
        <p>No feedback received yet.</p>
      </c:if>

    </div>
  </div>
</body>
</html>
