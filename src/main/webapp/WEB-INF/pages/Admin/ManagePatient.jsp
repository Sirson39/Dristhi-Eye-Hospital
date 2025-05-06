<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Manage Patients – Dhristi Eye Hospital</title>
  <!-- Font Awesome for icons -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Custom CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Admincss/ManagePatient.css"/>
  <style>
    /* Button for adding patients */
    .add-patient-btn {
      background-color: #2ea6db;
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 6px;
      font-size: 14px;
      cursor: pointer;
      margin: 15px 0;
      display: inline-flex;
      align-items: center;
    }
    .add-patient-btn i { margin-right: 8px; }
    .add-patient-btn:hover { background-color: #135fa0; }
    /* Table overrides */
    .card table {
      width: 100%; border-collapse: collapse;
    }
    .card th, .card td {
      padding: 12px 15px; text-align: left;
      border-bottom: 1px solid #ddd; font-size: 14px;
    }
    .card th { background-color: #135fa0; color: white; }
    .card tr:hover { background-color: #f1f1f1; }
    /* Action buttons */
    .btn-edit {
      background-color: #2ea6db; color: white;
      border: none; padding: 6px 12px;
      border-radius: 4px; cursor: pointer;
      font-size: 13px;
    }
    .btn-delete {
      background-color: #e74c3c; color: white;
      border: none; padding: 6px 12px;
      border-radius: 4px; cursor: pointer;
      font-size: 13px; margin-left: 5px;
    }
    .btn-edit:hover, .btn-delete:hover { opacity: 0.9; }
    /* Highlight active link */
    .sidebar a.active { background-color: #2ea6db; }
  </style>
</head>
<body>
  <!-- Sidebar -->
  <div class="sidebar">
    <h2>Dhristi Admin</h2>
    <a href="${pageContext.request.contextPath}/AdminDashboard.jsp"><i class="fas fa-chart-line"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/ManageDoctors.jsp"><i class="fas fa-user-md"></i> Manage Doctors</a>
    <a href="${pageContext.request.contextPath}/ManagePatients.jsp" class="active"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="${pageContext.request.contextPath}/ManageAppointments.jsp"><i class="fas fa-calendar-check"></i> Appointments</a>
    <a href="${pageContext.request.contextPath}/ManageBilling.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/ManageFeedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Report.jsp"><i class="fas fa-chart-pie"></i> Reports</a>
    <a href="${pageContext.request.contextPath}/Profile.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <!-- Main content -->
  <div class="main-content">
    <div class="dashboard-header">Manage Patients</div>
    <div class="card">
      <!-- Add New Patient -->
      <button class="add-patient-btn">
        <i class="fas fa-plus"></i> Add New Patient
      </button>

      <!-- Patients Table -->
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>DOB</th>
            <th>Gender</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Status</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>P001</td>
            <td>Jaya Thapa</td>
            <td>12 May 1990</td>
            <td>Female</td>
            <td>9812345678</td>
            <td>Kathmandu</td>
            <td><span class="status status-booked">Booked</span></td>
            <td>
              <button class="btn-edit"><i class="fas fa-edit"></i> Edit</button>
              <button class="btn-delete"><i class="fas fa-trash-alt"></i> Remove</button>
            </td>
          </tr>
          <!-- Repeat rows or loop dynamically -->
        </tbody>
      </table>
    </div>
  </div>
</body>
</html>
