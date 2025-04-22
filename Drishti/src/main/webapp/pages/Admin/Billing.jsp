<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Manage Billing – Dhristi Eye Hospital</title>

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <!-- Custom CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Admincss/Billing.css"/>
</head>
<body>
  <!-- Sidebar -->
  <div class="sidebar">
    <h2>Dhristi Admin</h2>
    <a href="${pageContext.request.contextPath}/AdminDashboard.jsp"><i class="fas fa-chart-line"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/ManageDoctor.jsp"><i class="fas fa-user-md"></i> Manage Doctors</a>
    <a href="${pageContext.request.contextPath}/ManagePatient.jsp"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="${pageContext.request.contextPath}/ManageAppointments.jsp"><i class="fas fa-calendar-check"></i> Appointments</a>
    <a href="${pageContext.request.contextPath}/ManageBilling.jsp" class="active"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/Feedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Report.jsp"><i class="fas fa-chart-pie"></i> Reports</a>
    <a href="${pageContext.request.contextPath}/Profile.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <!-- Main content -->
  <div class="main-content">
    <div class="dashboard-header">Billing Summary</div>

    <!-- Toggle New Bill Form -->
    <button class="add-bill-btn" id="toggleFormBtn">
      <i class="fas fa-plus"></i> Generate New Bill
    </button>

    <!-- New Bill Form -->
    <div id="billForm" style="display:none;">
      <div class="card">
        <form>
          <div class="form-row">
            <!-- form fields go here -->
          </div>
          <button type="submit" class="add-bill-btn">
            <i class="fas fa-save"></i> Save & Generate Invoice
          </button>
        </form>
      </div>
    </div>

    <!-- Table Filters -->
    <div class="filters">
      <input type="text" placeholder="Search patient…"/>
      <select>
        <option>All Doctors</option>
        <option>Dr. Sharma</option>
        <option>Dr. Dwa</option>
      </select>
      <select>
        <option>All Status</option>
        <option>Paid</option>
        <option>Unpaid</option>
        <option>Partial</option>
        <option>Overdue</option>
      </select>
      <input type="date"/>
      <input type="date"/>
    </div>

    <!-- Billing Table -->
    <div class="card">
      <table>
        <thead>
          <tr>
            <th>Invoice ID</th>
            <th>Patient</th>
            <th>Service(s)</th>
            <th>Doctor</th>
            <th>Date</th>
            <th>Total Amount</th>
            <th>Payment Method</th>
            <th>Payment Status</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>INV1001</td>
            <td>Binod Gurung</td>
            <td>Vision Test, Glasses</td>
            <td>Dr. Chang</td>
            <td>12-Apr-2025</td>
            <td>NPR 2,500</td>
            <td>Cash</td>
            <td><span class="status status-paid">Paid</span></td>
            <td>
              <button class="btn-view"><i class="fas fa-eye"></i></button>
              <button class="btn-print"><i class="fas fa-print"></i></button>
              <button class="btn-edit"><i class="fas fa-edit"></i></button>
            </td>
          </tr>
          <!-- Repeat or loop rows as needed -->
        </tbody>
      </table>
    </div>

    <!-- Analytics Cards -->
    <div class="analytics">
      <div class="card"><h3>Total Revenue</h3><p class="stat">NPR 19,500</p></div>
      <div class="card"><h3>Paid Invoices</h3><p class="stat">45</p></div>
      <div class="card"><h3>Unpaid</h3><p class="stat">5</p></div>
      <div class="card"><h3>Overdue</h3><p class="stat">2</p></div>
    </div>

    <!-- Monthly Revenue Chart -->
    <div class="chart-container">
      <h3>Monthly Revenue</h3>
      <canvas id="revenueChart" height="100"></canvas>
    </div>
  </div>

  <script>
    // Toggle the New Bill form
    document.getElementById('toggleFormBtn').addEventListener('click', () => {
      const f = document.getElementById('billForm');
      f.style.display = f.style.display === 'none' ? 'block' : 'none';
    });

    // Monthly Revenue Line Chart
    const ctxRev = document.getElementById('revenueChart').getContext('2d');
    new Chart(ctxRev, {
      type: 'line',
      data: {
        labels: ['Jan','Feb','Mar','Apr','May','Jun'],
        datasets: [{
          label: 'Revenue (NPR)',
          data: [12000,15000,13000,18000,17000,19500],
          fill: true,
          backgroundColor: 'rgba(19,95,160,0.2)',
          borderColor: '#135fa0',
          tension: 0.3
        }]
      },
      options: {
        responsive: true,
        scales: {
          y: { beginAtZero: true, ticks: { color: '#135fa0' } },
          x: { ticks: { color: '#135fa0' } }
        },
        plugins: {
          legend: { labels: { color: '#135fa0', font: { size: 14 } } }
        }
      }
    });
  </script>
</body>
</html>
