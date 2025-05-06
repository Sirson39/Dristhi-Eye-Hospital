<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Manage Appointments – Dhristi Eye Hospital</title>

  <!-- Font Awesome -->
  <link
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    rel="stylesheet"/>

  <!-- Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

  <!-- Your CSS -->
  <link rel="stylesheet"
        href="${pageContext.request.contextPath}/css/Admincss/Appointment.css"/>
</head>
<body>
  <div class="sidebar">
    <h2>Dhristi Admin</h2>
    <a href="${pageContext.request.contextPath}/Dhristi.jsp"><i class="fas fa-chart-line"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/ManageDoctor.jsp"><i class="fas fa-user-md"></i> Manage Doctors</a>
    <a href="${pageContext.request.contextPath}/ManagePatient.jsp"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="#" class="active"><i class="fas fa-calendar-check"></i> Appointments</a>
    <a href="${pageContext.request.contextPath}/Billing.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/Feedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Report.jsp"><i class="fas fa-chart-pie"></i> Reports</a>
    <a href="${pageContext.request.contextPath}/Profile.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <div class="main-content">
    <div class="dashboard-header">Manage Appointments</div>

    <button class="add-appointment-btn">
      <i class="fas fa-plus"></i> Create Appointment
    </button>

    <div class="filters">
      <input type="text" placeholder="Search patient..." />
      <select>
        <option>All Doctors</option>
        <option>Dr. Usha Chakrvarthy</option>
        <option>Dr. S.Natarajan</option>
        <option>Dr. Minas Coroneo</option>
        <option>Dr. David F.Chang</option>
        <option>Dr. Joel S.Schuman</option>
        <option>Prof. Dennis S.C Lam</option>
        <option>Prof. Charles N.J Mcghee</option>
        <option>Prof. Jost B.Jonas</option>
      </select>
      <select>
        <option>All Departments</option>
        <option>Retinal Diseases</option>
        <option>Vitreoretinal</option>
        <option>Corneal</option>
        <option>Cataract</option>
        <option>Glaucoma</option>
        <option>Refractive Surgeon</option>
        <option>Optic Nerve Diseases</option>
      </select>
      <select>
        <option>All Status</option>
        <option>Booked</option>
        <option>Upcoming</option>
        <option>Completed</option>
        <option>Missed</option>
      </select>
      <input type="date" />
      <input type="date" />
    </div>

    <div class="card">
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Patient</th>
            <th>Doctor</th>
            <th>Department</th>
            <th>Date</th>
            <th>Time</th>
            <th>Status</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>A001</td>
            <td>Jaya Thapa</td>
            <td>Dr. Usha Chakrvarthy</td>
            <td>Retinal Diseases</td>
            <td>2025-04-20</td>
            <td>10:00 AM</td>
            <td><span class="status status-booked">Booked</span></td>
            <td>
              <button class="btn-edit"><i class="fas fa-edit"></i></button>
              <button class="btn-reschedule"><i class="fas fa-calendar-alt"></i></button>
              <button class="btn-cancel"><i class="fas fa-times-circle"></i></button>
              <button class="btn-view"><i class="fas fa-eye"></i></button>
            </td>
          </tr>
          <!-- You can loop here with JSP tags or scriptlets to pull real data -->
        </tbody>
      </table>
    </div>

    <div class="analytics">
      <div class="card"><h3>Total Today</h3><p class="stat">4</p></div>
      <div class="card"><h3>Completed</h3><p class="stat">45</p></div>
      <div class="card"><h3>Missed</h3><p class="stat">3</p></div>
      <div class="card"><h3>Upcoming</h3><p class="stat">12</p></div>
    </div>

    <div class="card chart-container">
      <h3>Doctor-wise Appointment Count</h3>
      <canvas id="doctorChart" height="100"></canvas>
    </div>
  </div>

  <script>
    const ctx2 = document.getElementById('doctorChart').getContext('2d');
    new Chart(ctx2, {
      type: 'bar',
      data: {
        labels: ['Dr. Chakrvarthy','Dr. Natarajan','Dr. Coroneo','Dr. Chang','Dr. Jonas'],
        datasets: [{
          label: 'Appointments',
          data: [25,30,18,22,15],
          backgroundColor: ['#2ea6db','#135fa0','#2ea6db','#135fa0','#2ea6db'],
          borderColor: '#fff',
          borderWidth: 1
        }]
      },
      options: {
        responsive: true,
        scales: {
          y: { beginAtZero:true, ticks:{ color:'#135fa0' } },
          x: { ticks:{ color:'#135fa0' } }
        },
        plugins: { legend: { display:false } }
      }
    });
  </script>
</body>
</html>
