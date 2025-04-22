<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Test Reports – Dhristi Eye Hospital</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Patientcss/testreport.css" />
</head>
<body>
  <div class="sidebar">
    <h2>My Dashboard</h2>
    <a href="${pageContext.request.contextPath}/PatientDashboard.jsp"><i class="fas fa-chart-line"></i> My Dashboard</a>
    <a href="${pageContext.request.contextPath}/TestReports.jsp" class="active"><i class="fas fa-notes-medical"></i> Test Reports</a>
    <a href="${pageContext.request.contextPath}/MyAppointments.jsp"><i class="fas fa-user-md"></i> My Appointments</a>
    <a href="${pageContext.request.contextPath}/BookAppointment.jsp"><i class="fas fa-calendar-check"></i> Book Appointments</a>
    <a href="${pageContext.request.contextPath}/Billing.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/Feedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/MyProfile.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <main class="main-content">
    <div class="dashboard-header"><i class="fas fa-notes-medical"></i> Test Reports</div>

    <section id="book" class="test-section">
      <h2>Book a Test</h2>
      <form class="test-form" method="post" action="${pageContext.request.contextPath}/bookTest">
        <label for="testType">Test Type:</label>
        <select id="testType" name="testType">
          <option value="retina">Retina Scan</option>
          <option value="acuity">Vision Acuity</option>
          <option value="pressure">Eye Pressure Test</option>
        </select>

        <label for="doctor-select">Choose a Doctor:</label>
        <select id="doctor-select" name="doctorSelect" required>
          <option value="">-- Select Doctor --</option>
          <option value="sirson">Sirson Sharma, Eye Specialist</option>
          <option value="bidhan">Bidhan Banjade, Retina Surgeon</option>
          <option value="puspanjali">Puspanjali Adhikari, Pediatric Ophthalmologist</option>
          <option value="rushang">Rushang Sunuwar, Glaucoma Specialist</option>
          <option value="aseem">Aseem Gautam, General Eye Practitioner</option>
        </select>

        <label for="date">Preferred Date:</label>
        <input type="date" id="date" name="date" required />

        <label for="time">Preferred Time:</label>
        <input type="time" id="time" name="time" required />

        <button type="submit">Book Test</button>
      </form>
    </section>

    <section id="previous" class="test-section">
      <h2>Previous Test Reports</h2>
      <table class="test-table">
        <thead>
          <tr>
            <th>Test Type</th>
            <th>Date</th>
            <th>Type</th>
            <th>Result</th>
            <th>Report</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Retina Scan</td>
            <td>March 15, 2025</td>
            <td>Test</td>
            <td>Normal</td>
            <td><a href="#"><i class="fas fa-file"></i></a></td>
          </tr>
          <tr>
            <td>Vision Acuity</td>
            <td>Jan 12, 2025</td>
            <td>Test</td>
            <td>20/20</td>
            <td><a href="#"><i class="fas fa-file"></i></a></td>
          </tr>
        </tbody>
      </table>
    </section>
  </main>
</body>
</html>