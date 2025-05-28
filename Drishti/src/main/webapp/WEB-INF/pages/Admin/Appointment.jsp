<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Manage Appointments – Dhristi Eye Hospital</title>

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Admincss/Appointment.css"/>

  <style>
    td .btn-cancel {
      border: none;
      padding: 8px 10px;
      margin: 2px;
      border-radius: 6px;
      color: white;
      font-size: 14px;
      cursor: pointer;
      background-color: #dc3545;
      transition: all 0.3s ease-in-out;
    }

    .btn-cancel:hover {
      background-color: #b52a37;
    }

    select.status-select {
      padding: 5px;
      font-size: 13px;
      border-radius: 4px;
    }

    button.status-update {
      padding: 5px 10px;
      font-size: 13px;
      background-color: #28a745;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-left: 5px;
    }

    button.status-update:hover {
      background-color: #218838;
    }

    .status-form {
      display: flex;
      align-items: center;
    }
  </style>
</head>
<body>

<div class="sidebar">
  <h2>Doctor Dashboard</h2>
  <nav>
    <a href="${pageContext.request.contextPath}/DoctorDashboard"><i class="fas fa-home"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/Admin/appointments" class="active"><i class="fas fa-calendar-alt"></i> Appointments</a>
    <a href="${pageContext.request.contextPath}/Admin/add-treatment"><i class="fas fa-procedures"></i> Add Treatment</a>
    <a href="${pageContext.request.contextPath}/manage-patients"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="${pageContext.request.contextPath}/Admin/feedbacks"><i class="fas fa-comments"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
  </nav>
</div>

<div class="main-content">
  <div class="dashboard-header">Manage Appointments</div>

  <!-- Filter Form -->
<<<<<<< HEAD
 <form action="${pageContext.request.contextPath}/Admin/appointments" method="get" class="filters">
=======
  <form action="${pageContext.request.contextPath}/appointments" method="get" class="filters">
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
    <input type="text" name="search" placeholder="Search patient..." value="${param.search}" />
    <input type="date" name="fromDate" value="${param.fromDate}" />
    <input type="date" name="toDate" value="${param.toDate}" />
    <button type="submit"><i class="fas fa-filter"></i> Filter</button>
  </form>

  <!-- Appointment Table -->
  <div class="card">
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Date</th>
<<<<<<< HEAD
=======
          <th>Time</th>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
          <th>Department</th>
          <th>Reason</th>
          <th>Status</th>
          <th>Patient</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <c:choose>
          <c:when test="${not empty appointments}">
            <c:forEach var="a" items="${appointments}">
              <tr>
                <td>${a.appointmentId}</td>
                <td>${a.appointmentDate}</td>
<<<<<<< HEAD
=======
                <td>${a.time}</td>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
                <td>${a.dept}</td>
                <td>${a.appointmentReason}</td>

                <!-- Status form with dropdown -->
                <td>
<<<<<<< HEAD
                  <form action="${pageContext.request.contextPath}/Admin/appointments" method="post" class="status-form">
  <input type="hidden" name="action" value="updateStatus"/>
  <input type="hidden" name="appointmentId" value="${a.appointmentId}"/>
  <select name="status" class="status-select">
    <option value="pending" ${a.appointmentStatus == 'pending' ? 'selected' : ''}>Pending</option>
    <option value="Booked" ${a.appointmentStatus == 'Booked' ? 'selected' : ''}>Booked</option>
    <option value="Completed" ${a.appointmentStatus == 'Completed' ? 'selected' : ''}>Completed</option>
    <option value="Cancelled" ${a.appointmentStatus == 'Cancelled' ? 'selected' : ''}>Cancelled</option>
  </select>
  <button type="submit" class="status-update">Update</button>
</form>
=======
                  <form action="${pageContext.request.contextPath}/appointments" method="post" class="status-form">
                    <input type="hidden" name="action" value="updateStatus"/>
                    <input type="hidden" name="appointmentId" value="${a.appointmentId}"/>
                    <select name="status" class="status-select">
                      <option value="pending" ${a.appointmentStatus == 'pending' ? 'selected' : ''}>Pending</option>
                      <option value="Booked" ${a.appointmentStatus == 'Booked' ? 'selected' : ''}>Booked</option>
                      <option value="Completed" ${a.appointmentStatus == 'Completed' ? 'selected' : ''}>Completed</option>
                      <option value="Cancelled" ${a.appointmentStatus == 'Cancelled' ? 'selected' : ''}>Cancelled</option>
                    </select>
                    <button type="submit" class="status-update">Update</button>
                  </form>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
                </td>

                <td>${a.patientName}</td>

                <!-- Cancel button -->
                <td>
<<<<<<< HEAD
                  <form action="${pageContext.request.contextPath}/Admin/appointments" method="post" onsubmit="return confirm('Are you sure you want to cancel this appointment?');">
    				<input type="hidden" name="action" value="cancel"/>
   				 	<input type="hidden" name="appointmentId" value="${a.appointmentId}"/>
    				<button type="submit" class="btn-cancel"><i class="fas fa-times-circle"></i> Cancel</button>
  				</form>
=======
                  <a href="appointments?action=cancel&id=${a.appointmentId}"
                     class="btn-cancel"
                     onclick="return confirm('Are you sure you want to cancel this appointment?');">
                    <i class="fas fa-times-circle"></i> Cancel
                  </a>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
                </td>
              </tr>
            </c:forEach>
          </c:when>
          <c:otherwise>
<<<<<<< HEAD
            <tr>
 			 <td colspan="8" style="text-align:center; color: red;">No appointments found for your filters.</td>
			</tr>
            
=======
            <tr><td colspan="8" style="text-align:center;">No appointments found.</td></tr>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
          </c:otherwise>
        </c:choose>
      </tbody>
    </table>
  </div>
</div>

</body>
</html>
