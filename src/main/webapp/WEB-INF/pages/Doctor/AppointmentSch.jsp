<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Appointment Schedule – Dhristi Eye Hospital</title>

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Custom CSS -->
  <link href="${pageContext.request.contextPath}/css/Doctorcss/AppointmentSch.css" rel="stylesheet"/>
</head>
<body>
  <!-- SIDEBAR -->
  <div class="sidebar">
    <nav>
      <h2>Dr. John Deo</h2>
      <a href="${pageContext.request.contextPath}/DoctorDashboard.jsp"><i class="fas fa-home"></i> Dashboard</a>
      <a href="${pageContext.request.contextPath}/AppointmentSchedule.jsp" class="active"><i class="fas fa-calendar-alt"></i> Appointment Schedule</a>
      <a href="${pageContext.request.contextPath}/PatientRecords.jsp"><i class="fas fa-notes-medical"></i> Patient Records</a>
      <a href="${pageContext.request.contextPath}/AddTreatment.jsp"><i class="fas fa-procedures"></i> Add Treatment</a>
      <a href="${pageContext.request.contextPath}/VisionTests.jsp"><i class="fas fa-eye"></i> Vision Tests</a>
      <a href="${pageContext.request.contextPath}/ProfileSettings.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
    </nav>
  </div>

  <!-- MAIN CONTENT -->
  <div class="main-content">
    <!-- HEADER -->
    <div class="page-header">Appointment Schedule</div>
    <div class="quick-stats">
      <div class="stat-card"><div class="stat-title">Appointments Today</div><div class="stat-value">6</div></div>
      <div class="stat-card"><div class="stat-title">Completed Today</div><div class="stat-value">3</div></div>
      <div class="stat-card"><div class="stat-title">Upcoming Appointments</div><div class="stat-value">2</div></div>
      <div class="stat-card"><div class="stat-title">Missed / Cancelled</div><div class="stat-value">1</div></div>
    </div>

    <!-- CONTROLS -->
    <div class="controls">
      <label for="scheduleDate"><i class="fas fa-calendar-day"></i> Date:</label>
      <input type="date" id="scheduleDate" value="2025-04-19"/>
      <button class="btn-toggle active" id="dailyBtn">Daily</button>
      <button class="btn-toggle" id="weeklyBtn">Weekly</button>
      <button class="btn-toggle" id="calendarBtn">Calendar</button>
    </div>

    <!-- DAILY/WEEKLY TABLE -->
    <div class="schedule-table-wrapper">
      <table class="appointments-table">
        <thead>
          <tr>
            <th>Time</th><th>Patient Name</th><th>Age</th><th>Reason for Visit</th><th>Status</th><th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>10:00 AM</td><td>Sita Rai</td><td>29</td><td>Follow‑up: Eye Redness</td><td><span class="status completed">Confirmed</span></td><td class="actions">
              <i class="fas fa-eye" title="View Details"></i>
              <i class="fas fa-play-circle" title="Start Consultation"></i>
              <i class="fas fa-calendar-alt" title="Reschedule"></i>
              <i class="fas fa-times-circle" title="Cancel"></i>
              <i class="fas fa-check-circle" title="Mark Completed"></i>
              <i class="fas fa-file-alt" title="Add Notes"></i>
            </td>
          </tr>
          <tr>
            <td>10:30 AM</td><td>Binod Gurung</td><td>45</td><td>Vision Test Consultation</td><td><span class="status pending">Pending</span></td><td class="actions">
              <i class="fas fa-eye"></i><i class="fas fa-play-circle"></i><i class="fas fa-calendar-alt"></i><i class="fas fa-times-circle"></i><i class="fas fa-check-circle"></i><i class="fas fa-file-alt"></i>
            </td>
          </tr>
          <tr>
            <td>11:00 AM</td><td>Ram Kumar</td><td>36</td><td>Glaucoma Check‑up</td><td><span class="status completed">Completed</span></td><td class="actions">
              <i class="fas fa-eye"></i><i class="fas fa-play-circle"></i><i class="fas fa-calendar-alt"></i><i class="fas fa-times-circle"></i><i class="fas fa-check-circle"></i><i class="fas fa-file-alt"></i>
            </td>
          </tr>
        </tbody>
      </table>
    </div>

    <!-- CALENDAR VIEW -->
    <div class="calendar-wrapper" style="display:none;">
      <table class="calendar">
        <thead><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead>
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

  <!-- TOGGLE SCRIPT -->
  <script>
    const dailyBtn = document.getElementById('dailyBtn');
    const weeklyBtn = document.getElementById('weeklyBtn');
    const calendarBtn = document.getElementById('calendarBtn');
    const tableWrap = document.querySelector('.schedule-table-wrapper');
    const calWrap = document.querySelector('.calendar-wrapper');

    function setView(btn) {
      [dailyBtn, weeklyBtn, calendarBtn].forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      if (btn === calendarBtn) {
        tableWrap.style.display = 'none';
        calWrap.style.display = 'block';
      } else {
        tableWrap.style.display = 'block';
        calWrap.style.display = 'none';
      }
    }

    dailyBtn.addEventListener('click', () => setView(dailyBtn));
    weeklyBtn.addEventListener('click', () => setView(weeklyBtn));
    calendarBtn.addEventListener('click', () => setView(calendarBtn));

    // initialize view
    setView(dailyBtn);
  </script>
</body>
</html>