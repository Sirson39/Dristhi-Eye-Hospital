<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<<<<<<< HEAD
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
=======
<<<<<<< HEAD
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
=======
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Doctor Dashboard – Dhrishti Eye Hospital</title>

  <!-- Font Awesome for icons -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <!-- Dashboard CSS -->
  <link href="${pageContext.request.contextPath}/css/Admincss/DoctorDashboard.css" rel="stylesheet"/>
</head>
<body>

  <!-- SIDEBAR -->
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
  <div class="sidebar">
    <nav>
      <h2>Doctor Dashboard</h2>
      <a href="<%= request.getContextPath() %>/DoctorDashboard" class="active"><i class="fas fa-home"></i> Dashboard</a>
      <a href="<%= request.getContextPath() %>/Admin/appointments"><i class="fas fa-calendar-alt"></i> Appointments</a>
      <a href="${pageContext.request.contextPath}/Admin/add-treatment"><i class="fas fa-procedures"></i> Add Treatment</a>
      <a href="<%= request.getContextPath() %>/manage-patients"><i class="fas fa-users"></i> Manage Patients</a>
      <a href="<%= request.getContextPath() %>/Admin/feedbacks"><i class="fas fa-comments"></i> Feedback</a>
      <a href="<%= request.getContextPath() %>/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </nav>  
  </div>

<<<<<<< HEAD
=======
=======
  <p>Context path debug: <%= request.getContextPath() %></p>
  
  <div class="sidebar">
    <nav>
        <h2>Doctor dashboard</h2>
 		<a href="<%= request.getContextPath() %>/DoctorDashboard" class="active"><i class="fas fa-home"></i> Dashboard</a>
    <a href="<%= request.getContextPath() %>/Admin/appointments"><i class="fas fa-calendar-alt"></i> Appointments</a>
    <a href="${pageContext.request.contextPath}/Admin/add-treatment"><i class="fas fa-procedures"></i> Add Treatment</a>
    <a href="<%= request.getContextPath() %>/manage-patients"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="<%= request.getContextPath() %>/Admin/feedbacks"><i class="fas fa-comments"></i> Feedback</a>
    <a href="<%= request.getContextPath() %>/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
	</nav>  
  </div>
  
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
  <!-- MAIN CONTENT -->
  <div class="main-content">

    <!-- HEADER ROW -->
    <div class="header-row">
      <div class="page-header">Welcome, Dr Deo</div>
      <div class="doctor-info">
        <img src="${pageContext.request.contextPath}/images/doclogo.jpg" alt="Dr. Doe"/>
        <div class="info-text">
          <div class="name">Dr. John Doe</div>
          <div class="spec">Retina Specialist</div>
          <div class="id">ID: DOC12345</div>
        </div>
      </div>
    </div>

    <!-- SUMMARY CARDS -->
    <div class="summary-cards">
      <div class="summary-card">
        <i class="fas fa-users"></i>
        <div class="title">Total Patients</div>
<<<<<<< HEAD
        <div class="value">${totalPatients}</div>
=======
<<<<<<< HEAD
        <div class="value">${totalPatients}</div>
=======
        <div class="value">50+</div>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
        <div class="subtitle">Till Today</div>
      </div>
      <div class="summary-card">
        <i class="fas fa-user-check"></i>
        <div class="title">Today’s Patients</div>
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
        <div class="value">${todaysPatients}</div>
        <div class="subtitle">
          <%= new java.text.SimpleDateFormat("dd MMM yyyy").format(new java.util.Date()) %>
        </div>
<<<<<<< HEAD
=======
=======
        <div class="value">20</div>
        <div class="subtitle">21 Dec 2021</div>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
      </div>
      <div class="summary-card">
        <i class="fas fa-calendar-check"></i>
        <div class="title">Today’s Appointments</div>
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
        <div class="value">${todaysAppointments}</div>
        <div class="subtitle">
          <%= new java.text.SimpleDateFormat("dd MMM yyyy").format(new java.util.Date()) %>
        </div>
<<<<<<< HEAD
=======
=======
        <div class="value">10</div>
        <div class="subtitle">21 Dec 2021</div>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
      </div>
      <div class="summary-card">
        <i class="fas fa-procedures"></i>
        <div class="title">Pending Records</div>
<<<<<<< HEAD
        <div class="value">${pendingRecords}</div>
=======
<<<<<<< HEAD
        <div class="value">${pendingRecords}</div>
=======
        <div class="value">12</div>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
      </div>
    </div>

    <!-- FIRST ROW OF REPORTS -->
    <div class="reports-row">
<<<<<<< HEAD
      <div class="report-card">
        <h5>Patients Summary – <%= new java.text.SimpleDateFormat("MMMM yyyy").format(new java.util.Date()) %></h5>
=======
<<<<<<< HEAD
      <div class="report-card">
        <h5>Patients Summary – <%= new java.text.SimpleDateFormat("MMMM yyyy").format(new java.util.Date()) %></h5>
=======

      <!-- Patients Summary Donut -->
      <div class="report-card">
        <h5>Patients Summary December 2021</h5>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
        <div class="chart-wrapper">
          <canvas id="patientsDonut"></canvas>
        </div>
        <ul class="legend">
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
          <li><span class="dot new"></span> Total Patients</li>
          <li><span class="dot old"></span> Today’s Appointments</li>
        </ul>
      </div>

<<<<<<< HEAD
=======
=======
          <li><span class="dot new"></span> New Patients</li>
          <li><span class="dot old"></span> Old Patients</li>
          <li><span class="dot total"></span> Total Patients</li>
        </ul>
      </div>

      <!-- Today's Appointments Table -->
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
      <div class="report-card">
        <h5>Today’s Appointments</h5>
        <table class="appointments-table">
          <thead>
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
            <tr><th>Patient</th><th>Diagnosis</th><th>Status</th></tr>
          </thead>
          <tbody>
            <c:forEach var="appt" items="${todaysAppointmentsList}">
              <tr>
                <td>${appt.patientName}</td>
                <td>${appt.appointmentReason}</td>
                <td><span class="status ${appt.appointmentStatus.toLowerCase()}">${appt.appointmentStatus}</span></td>
              </tr>
            </c:forEach>
<<<<<<< HEAD
=======
=======
            <tr><th>Patient</th><th>Diagnosis</th><th>Time</th><th>Status</th></tr>
          </thead>
          <tbody>
            <tr>
              <td>Jaya Thapa</td><td>Health Checkup</td><td>09:00 AM</td>
              <td><span class="status pending">Pending</span></td>
            </tr>
            <tr>
              <td>Ram Kumar</td><td>Health Checkup</td><td>12:30 PM</td>
              <td><span class="status completed">Completed</span></td>
            </tr>
            <tr>
              <td>Sita Rai</td><td>Report</td><td>01:00 PM</td>
              <td><span class="status pending">Pending</span></td>
            </tr>
            <tr>
              <td>Kumar Singh</td><td>Common Cold</td><td>01:30 PM</td>
              <td><span class="status cancelled">Canceled</span></td>
            </tr>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
          </tbody>
        </table>
      </div>

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
      <div class="report-card">
        <h5>Next Patient Details</h5>
        <c:if test="${not empty nextPatient}">
          <dl class="next-patient">
            <dt>Name:</dt><dd>${nextPatient.patientName}</dd>
            <dt>Department:</dt><dd>${nextPatient.dept}</dd>
            <dt>Diagnosis:</dt><dd>${nextPatient.appointmentReason}</dd>
            <dt>Appointment Date:</dt><dd>${nextPatient.appointmentDate}</dd>
          </dl>
        </c:if>
        <c:if test="${empty nextPatient}">
          <p>No pending patients today.</p>
        </c:if>
      </div>
    </div>

    <!-- SECOND ROW: Requests & Calendar -->
<<<<<<< HEAD
=======
=======
      <!-- Next Patient Details -->
      <div class="report-card">
        <h5>Next Patient Details</h5>
        <dl class="next-patient">
          <dt>Name:</dt><dd>Binod Gurung</dd>
          <dt>Patient ID:</dt><dd>P004</dd>
          <dt>Last Appointment:</dt><dd>15 Dec 2021</dd>
          <dt>Diagnosis:</dt><dd>Health Checkup</dd>
          <dt>Age / Sex:</dt><dd>33 / Male</dd>
        </dl>
      </div>
    </div>

    <!-- SECOND ROW: Requests + Calendar -->
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
    <div class="reports-row">
      <div class="report-card">
        <h5>Appointment Requests</h5>
        <ul class="appt-requests">
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
          <c:forEach var="req" items="${appointmentRequests}">
            <li class="appt-request-item">
              <span class="patient-name">${req.patientName}</span>
              <span class="actions">
                <i class="fas fa-check-circle approve"></i>
                <i class="fas fa-times-circle reject"></i>
              </span>
            </li>
          </c:forEach>
<<<<<<< HEAD
=======
=======
          <li>
            Sirson Sharma
            <span class="actions">
              <i class="fas fa-check-circle approve"></i>
              <i class="fas fa-times-circle reject"></i>
            </span>
          </li>
          <li>
            Shirisha Sharma
            <span class="actions">
              <i class="fas fa-check-circle approve"></i>
              <i class="fas fa-times-circle reject"></i>
            </span>
          </li>
          <li>
            Aseem Gautam (Eye Pain)
            <span class="actions">
              <i class="fas fa-check-circle approve"></i>
              <i class="fas fa-times-circle reject"></i>
            </span>
          </li>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
        </ul>
      </div>

      <div class="report-card calendar-card">
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
  <h5>Calendar</h5>
  <div id="calendar">
    <div class="calendar-header">
      <button id="prevMonth">&lt;</button>
      <span id="monthYear"></span>
      <button id="nextMonth">&gt;</button>
    </div>
    <div id="calendarTable"></div>
  </div>
</div>

  </div>

  <!-- SCRIPTS -->
  <script>
  document.addEventListener('DOMContentLoaded', () => {
    // Patients Summary Donut
    const donutCtx = document.getElementById('patientsDonut').getContext('2d');
  new Chart(donutCtx, {
    type: 'doughnut',
    data: {
      labels: ['Total Patients', "Today’s Appointments"],
      datasets: [{
        data: [${totalPatients}, ${todaysAppointments}], // Directly from DB via servlet
        backgroundColor: ['#5484ff', '#ffd8a8']
      }]
    },
    options: {
      maintainAspectRatio: false,
      cutout: '60%',
      plugins: { legend: { display: false } }
    }
  });
    
    const calendar = document.getElementById('calendar');
    const monthYear = document.getElementById('monthYear');

    let today = new Date();
    let currentMonth = today.getMonth();
    let currentYear = today.getFullYear();

    const months = [
      "January", "February", "March", "April", "May", "June",
      "July", "August", "September", "October", "November", "December"
    ];

    function generateCalendar(month, year) {
      monthYear.textContent = `${months[month]} ${year}`;
      const firstDay = new Date(year, month, 1).getDay();
      const daysInMonth = new Date(year, month + 1, 0).getDate();

      let tbl = document.createElement('table');
      tbl.classList.add('calendar');
      tbl.innerHTML = `
        <thead>
          <tr>
            <th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th>
          </tr>
        </thead>
        <tbody></tbody>
      `;

      let tbody = tbl.querySelector('tbody');
      let date = 1;

      for (let i = 0; i < 6; i++) {
        let row = document.createElement('tr');

        for (let j = 0; j < 7; j++) {
          let cell = document.createElement('td');
          if (i === 0 && j < firstDay) {
            cell.textContent = '';
          } else if (date > daysInMonth) {
            cell.textContent = '';
          } else {
            cell.textContent = date;
            if (date === today.getDate() && month === today.getMonth() && year === today.getFullYear()) {
              cell.classList.add('today');
            }
            date++;
          }
          row.appendChild(cell);
        }
        tbody.appendChild(row);
      }

      const nav = document.createElement('div');
      nav.classList.add('calendar-nav');
      nav.innerHTML = `
        <button id="prevMonth">&lt;</button>
        <button id="nextMonth">&gt;</button>
      `;

      calendar.innerHTML = '';
      calendar.appendChild(nav);
      calendar.appendChild(monthYear);
      calendar.appendChild(tbl);

      document.getElementById('prevMonth').addEventListener('click', () => {
        currentMonth--;
        if (currentMonth < 0) {
          currentMonth = 11;
          currentYear--;
        }
        generateCalendar(currentMonth, currentYear);
      });

      document.getElementById('nextMonth').addEventListener('click', () => {
        currentMonth++;
        if (currentMonth > 11) {
          currentMonth = 0;
          currentYear++;
        }
        generateCalendar(currentMonth, currentYear);
      });
    }

    generateCalendar(currentMonth, currentYear);
  });
<<<<<<< HEAD
=======
=======
        <h5>Calendar – December 2021</h5>
        <table class="calendar">
          <thead>
            <tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr>
          </thead>
          <tbody>
            <tr><td></td><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr>
            <tr><td>6</td><td>7</td><td>8</td><td>9</td><td class="today">10</td><td>11</td><td>12</td></tr>
            <tr><td>13</td><td>14</td><td>15</td><td>16</td><td>17</td><td>18</td><td>19</td></tr>
            <tr><td>20</td><td>21</td><td>22</td><td>23</td><td>24</td><td>25</td><td>26</td></tr>
            <tr><td>27</td><td>28</td><td>29</td><td>30</td><td>31</td><td></td><td></td></tr>
          </tbody>
        </table>
      </div>
    </div>

  </div>

  <!-- CHART.JS SCRIPTS -->
  <script>
    // Patients Summary Donut
    const donutCtx = document.getElementById('patientsDonut').getContext('2d');
    new Chart(donutCtx, {
      type: 'doughnut',
      data: {
        labels: ['New','Old','Total'],
        datasets:[{
          data:[300,200,500],
          backgroundColor:['#d0e7ff','#ffd8a8','#5484ff']
        }]
      },
      options:{
        maintainAspectRatio:false,
        cutout:'60%',
        plugins:{ legend:{ display:false } }
      }
    });
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
  </script>
</body>
</html>
