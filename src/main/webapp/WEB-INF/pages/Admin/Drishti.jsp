<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Admin Dashboard - Dhristi Eye Hospital</title>

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />

  <!-- Custom CSS -->
  <link href="${pageContext.request.contextPath}/css/Admincss/Drishti.css" rel="stylesheet" />

  <!-- Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
  <div class="sidebar">
    <div class="logo-container">
      <img src="${pageContext.request.contextPath}/images/Logo2.png" alt="Dhristi Eye Care Logo" />
    </div>
    <h2>Dhristi Admin</h2>
    <a href="${pageContext.request.contextPath}/AdminDashboard.jsp"><i class="fas fa-chart-line"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/ManageDoctor.jsp"><i class="fas fa-user-md"></i> Manage Doctors</a>
    <a href="${pageContext.request.contextPath}/ManagePatient.jsp"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="${pageContext.request.contextPath}/ManageAppointments.jsp"><i class="fas fa-calendar-check"></i> Appointments</a>
    <a href="${pageContext.request.contextPath}/Billing.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/Feedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Report.jsp"><i class="fas fa-chart-pie"></i> Reports</a>
    <a href="${pageContext.request.contextPath}/Profile.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <div class="main-content">
    <div class="dashboard-header">Welcome to Dhristi Admin Dashboard</div>
    <div class="cards">
      <div class="card">
        <img src="https://cdn-icons-png.flaticon.com/512/3774/3774299.png" alt="Doctors" />
        <h3>Total Doctors</h3>
        <p>8</p>
      </div>
      <div class="card">
        <img src="https://cdn-icons-png.flaticon.com/512/4320/4320337.png" alt="Patients" />
        <h3>Total Patients</h3>
        <p>52</p>
      </div>
      <div class="card">
        <img src="https://cdn-icons-png.flaticon.com/512/3095/3095583.png" alt="Appointments" />
        <h3>Appointments</h3>
        <p>25</p>
      </div>
      <div class="card">
        <img src="https://cdn-icons-png.flaticon.com/512/2892/2892644.png" alt="Revenue" />
        <h3>Total Revenue</h3>
        <p>Rs 1,84,240</p>
      </div>
    </div>

    <div class="chart-container">
      <h3>Monthly Appointments Overview</h3>
      <canvas id="appointmentsChart" height="100"></canvas>
    </div>
  </div>

  <script>
    const ctx = document.getElementById('appointmentsChart').getContext('2d');
    const appointmentsChart = new Chart(ctx, {
      type: 'line',
      data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
        datasets: [{
          label: 'Appointments',
          data: [45, 68, 70, 58, 90, 78],
          fill: true,
          backgroundColor: 'rgba(19, 95, 160, 0.2)',
          borderColor: '#135fa0',
          tension: 0.3
        }]
      },
      options: {
        responsive: true,
        plugins: {
          legend: {
            labels: { color: '#135fa0' }
          }
        },
        scales: {
          y: { beginAtZero: true, ticks: { color: '#135fa0' } },
          x: { ticks: { color: '#135fa0' } }
        }
      }
    });
  </script>
</body>
</html>
