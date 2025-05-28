<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="com.dhristi.model.UserModel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Edit Patient – Dhrishti Eye Hospital</title>

  <!-- your custom CSS -->
  <link rel="stylesheet"
        href="${pageContext.request.contextPath}/css/Admincss/EditPatient.css"/>
  <!-- FontAwesome icons -->
  <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
</head>
<body>

  <!-- SIDEBAR -->
  <div class="sidebar">
    <nav>
      <h2>Doctor Dashboard</h2>
      <a href="<%= request.getContextPath() %>/DoctorDashboard" class="active"><i class="fas fa-home"></i> Dashboard</a>
    <a href="<%= request.getContextPath() %>/Admin/appointments"><i class="fas fa-calendar-alt"></i> Appointments</a>
    <a href="<%= request.getContextPath() %>/Admin/add-treatment"><i class="fas fa-procedures"></i> Add Treatment</a>
    <a href="<%= request.getContextPath() %>/Admin/manage-patients"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="<%= request.getContextPath() %>/Admin/feedbacks"><i class="fas fa-comments"></i> Feedback</a>
    <a href="<%= request.getContextPath() %>/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </nav>
  </div>

  <!-- MAIN CONTENT -->
  <div class="main-content">
    <!-- Header -->
    <div class="header-row">
      <div class="page-header">Edit Patient Information</div>
      <div class="doctor-info">
        <img src="${pageContext.request.contextPath}/images/doclogo.jpg" alt="Dr. Doe"/>
        <div class="info-text">
          <div class="name">Dr. John Doe</div>
          <div class="spec">Retina Specialist</div>
          <div class="id">ID: DOC12345</div>
        </div>
      </div>
    </div>

    <!-- Edit Form Card -->
    <div class="report-card">
      <form method="post"
            action="${pageContext.request.contextPath}/edit-patient">
        <input type="hidden" name="id" value="${patient.userId}" />

        <label for="name"><strong>Name:</strong></label><br/>
        <input type="text"
               id="name"
               name="name"
               value="${patient.name}"
               required /><br/>

        <label for="email"><strong>Email:</strong></label><br/>
        <input type="email"
               id="email"
               name="email"
               value="${patient.email}"
               required /><br/>

        <label for="phone"><strong>Phone:</strong></label><br/>
        <input type="text"
               id="phone"
               name="phone"
               value="${patient.phoneNumber}"
               required /><br/>

        <div class="button-group">
          <!-- confirm update -->
          <button type="submit" class="confirm">
            <i class="fas fa-check"></i> Confirm Update
          </button>

          <!-- cancel goes back to patient list -->
          <a href="${pageContext.request.contextPath}/manage-patients"
             class="cancel">
            <i class="fas fa-times"></i> Cancel
          </a>
        </div>
      </form>
    </div>
  </div>

</body>
</html>