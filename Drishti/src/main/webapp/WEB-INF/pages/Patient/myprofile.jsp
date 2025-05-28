<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.dhristi.model.PatientModel" %>
<%
    PatientModel user = (PatientModel) session.getAttribute("loggedUser");
    if (user == null) {
        response.sendRedirect(request.getContextPath() + "/login");
        return;
    }
    request.setAttribute("user", user); 
    String gender = user.getGender();
    boolean isMale = "Male".equalsIgnoreCase(gender);
    boolean isFemale = "Female".equalsIgnoreCase(gender);
    boolean isOther = "Other".equalsIgnoreCase(gender);
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Profile Settings – Dhristi Eye Hospital</title>
  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Patientcss/myprofile.css" />
</head>
<body>
  <div class="sidebar">
    <h2>My Dashboard</h2>
    <a href="${pageContext.request.contextPath}/PatientDashboard"><i class="fas fa-chart-line"></i> My Dashboard</a>
    <a href="${pageContext.request.contextPath}/Patient/myappointment"><i class="fas fa-user-md"></i> My Appointments</a>
    <a href="${pageContext.request.contextPath}/Patient/BookAppointment"><i class="fas fa-calendar-check"></i> Book Appointments</a>
    <a href="${pageContext.request.contextPath}/Patient/mytreatments"><i class="fas fa-notes-medical"></i> My Treatments</a>
    <a href="${pageContext.request.contextPath}/Patient/feedback"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Patient/profile"class="active"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <div class="main-content">
    <div class="dashboard-header"><i class="fas fa-user-cog"></i> Profile Settings</div>

    <!-- Personal Details -->
    <div class="card" id="personalCard">
      <h3>Personal Details</h3>
      <form id="personalForm" method="post" action="${pageContext.request.contextPath}/Patient/UpdateProfile">
  <div class="form-row">
    <div class="form-group">
      <label for="fullName">Full Name</label>
      <input type="text" id="fullName" name="name" value="${user.name}" required />
    </div>
    <div class="form-group">
      <label for="email">Email Address</label>
      <input type="email" id="email" name="email" value="${user.email}" required />
    </div>
    <div class="form-group">
      <label for="mobile">Mobile Number</label>
      <input type="tel" id="mobile" name="phoneNumber" value="${user.phone}" required />
      
    </div>

    <div class="form-group">
      <label for="age">Age</label>
      <input type="number" id="age" name="age" value="${user.age}" required />
    </div>
    <div class="form-group">
  <label>Gender</label>
  <div>
    <label><input type="radio" name="gender" value="Male" <%= isMale ? "checked" : "" %> disabled /> Male</label>
    <label><input type="radio" name="gender" value="Female" <%= isFemale ? "checked" : "" %> disabled /> Female</label>
    <label><input type="radio" name="gender" value="Other" <%= isOther ? "checked" : "" %> disabled /> Other</label>
  </div>
</div>

    <div class="form-group">
      <label for="bloodGroup">Blood Group</label>
      <input type="text" id="bloodGroup" name="bloodGroup" value="${user.bloodGroup}" required />
    </div>

    <div class="form-group">
      <label for="address">Address</label>
      <input type="text" id="address" name="address" value="${user.address}" required />
    </div>


    <div class="form-group">
      <label for="profilePic">Profile Picture</label>
      <input type="file" id="profilePic" accept="image/*" disabled />
      <img id="profilePicPreview" src="https://via.placeholder.com/100" alt="Preview" />
    </div>
  </div>

  <div class="form-actions">
    <button type="button" class="btn btn-edit" id="editPersonalBtn">Edit Info</button>
    <button type="submit" class="btn btn-save" id="savePersonalBtn" style="display:none;">Save Changes</button>
    <button type="button" class="btn btn-cancel" id="cancelPersonalBtn" style="display:none;">Cancel</button>
  </div>
</form>
      
    </div>


    <!-- Notification Preferences -->
    <div class="card">
      <h3>Notification Preferences</h3>
      <div class="form-row">
        <div class="form-group">
          <label><input type="checkbox" checked /> Appointment Alerts</label>
          <label><input type="checkbox" checked /> System Updates</label>
          <label><input type="checkbox" /> Feedback Notifications</label>
          <label><input type="checkbox" checked /> Billing & Payment Alerts</label>
          <label><input type="checkbox" /> Low Stock Alerts</label>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group">
          <label><input type="checkbox" checked /> Email Notifications</label>
          <label><input type="checkbox" /> In-System Popups</label>
          <label><input type="checkbox" /> SMS Alerts</label>
        </div>
      </div>
    </div>

    <!-- Logout & Session Management -->
    <form action="${pageContext.request.contextPath}/logout" method="get">
    <button class="btn btn-logout" onclick="confirmLogout(event)">
    <i class="fas fa-sign-out-alt"></i> Logout
	</button>
</form>
<script>
  function confirmLogout(event) {
    event.preventDefault(); // stop normal button action

    if (confirm("Are you sure you want to logout?")) {
      // Redirect to logout servlet
      window.location.href = "${pageContext.request.contextPath}/logout";
    }
  }
</script>

  
</body>
</html>