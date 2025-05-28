<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, com.dhristi.model.UserModel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Manage Patients</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Admincss/ManagePatient.css" />
      <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
</head>
<body>

<!-- ── SIDEBAR ── -->
<div class="sidebar">
    <nav>
        <h2>Doctor dashboard</h2>
 		 <a href="<%= request.getContextPath() %>/DoctorDashboard"><i class="fas fa-home"></i> Dashboard</a>
    <a href="<%= request.getContextPath() %>/Admin/appointments"><i class="fas fa-calendar-alt"></i> Appointments</a>
    <a href="<%= request.getContextPath() %>/Admin/add-treatment"><i class="fas fa-procedures"></i> Add Treatment</a>
    <a href="<%= request.getContextPath() %>/manage-patients" class="active"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="<%= request.getContextPath() %>/Admin/feedbacks"><i class="fas fa-comments"></i> Feedback</a>
    <a href="<%= request.getContextPath() %>/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
	</nav>  
  </div>
<!-- ── MAIN CONTENT ── -->
<div class="main-content">
    <div class="dashboard-header">Manage Patients</div>

    <div class="card">
        <table>
            <thead>
                <tr>
                    <th>ID</th><th>Name</th><th>Email</th><th>Phone</th><th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="patient" items="${patients}">
                    <tr>
                        <td>${patient.userId}</td>
                        <td>${patient.name}</td>
                        <td>${patient.email}</td>
                        <td>${patient.phoneNumber}</td>
                        <td>
                            <form method="get" action="${pageContext.request.contextPath}/edit-patient" style="display:inline;">
                                <input type="hidden" name="id" value="${patient.userId}" />
                                <button type="submit">Edit</button>
                            </form>
                            <form method="post" action="${pageContext.request.contextPath}/delete-patient" style="display:inline;" 
                                  onsubmit="return confirm('Are you sure you want to delete this patient?');">
                                <input type="hidden" name="id" value="${patient.userId}" />
                                <button type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- Font Awesome CDN for sidebar icons -->
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
