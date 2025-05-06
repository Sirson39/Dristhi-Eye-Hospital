<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Book Appointment – Dhrishti Eye Hospital</title>

  <!-- Font Awesome for icons -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
  <!-- Custom CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Patientcss/bookappointment.css" />
</head>
<body>
  <!-- Sidebar -->
  <div class="sidebar">
    <h2>My Dashboard</h2>
    <a href="${pageContext.request.contextPath}/dashboard.jsp"><i class="fas fa-chart-line"></i> My Dashboard</a>
    <a href="${pageContext.request.contextPath}/testreport.jsp"><i class="fas fa-notes-medical"></i> Test Reports</a>
    <a href="${pageContext.request.contextPath}/myappointment.jsp"><i class="fas fa-user-md"></i> My Appointments</a>
    <a href="${pageContext.request.contextPath}/BookAppointment.jsp" class="active"><i class="fas fa-calendar-check"></i> Book Appointments</a>
    <a href="${pageContext.request.contextPath}/Billing.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/feedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/myprofile.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <!-- Main content -->
  <main class="main-content">
    <div class="dashboard-header"><i class="fas fa-calendar-check"></i> Book Appointment</div>

    <!-- Doctor Cards -->
    <div class="doctor-cards">
      <!-- Card 1 -->
      <div class="doctor-card">
        <img src="${pageContext.request.contextPath}/images/Usha.jpeg" alt="Dr. Usha Chakravarthy" />
        <div class="info">
          <h3>Dr. Usha Chakravarthy</h3>
          <p><strong>ID:</strong> D001</p>
          <p><strong>Specialty:</strong> Retinal Disease Research</p>
          <p><strong>Phone:</strong> 9861047436</p>
          <p><strong>Email:</strong> ushachakra001@gmail.com</p>
        </div>
        <div class="actions">
          <button class="btn-info"><i class="fas fa-info-circle"></i> Info</button>
          <button class="btn-book"><i class="fas fa-calendar-plus"></i> Book a Date</button>
        </div>
      </div>

      <!-- Card 2 -->
      <div class="doctor-card">
        <img src="${pageContext.request.contextPath}/images/Prof.-Dr.-S.-Natarajan.jpeg" alt="Dr. S. Natarajan" />
        <div class="info">
          <h3>Dr. S. Natarajan</h3>
          <p><strong>ID:</strong> D002</p>
          <p><strong>Specialty:</strong> Vitreoretinal Surgery</p>
          <p><strong>Phone:</strong> 9802345678</p>
          <p><strong>Email:</strong> snatarajan002@dhristi.com</p>
        </div>
        <div class="actions">
          <button class="btn-info"><i class="fas fa-info-circle"></i> Info</button>
          <button class="btn-book"><i class="fas fa-calendar-plus"></i> Book a Date</button>
        </div>
      </div>

      <!-- Card 3 -->
      <div class="doctor-card">
        <img src="${pageContext.request.contextPath}/images/Minas.jpg" alt="Dr. Minas Coroneo" />
        <div class="info">
          <h3>Dr. Minas Coroneo</h3>
          <p><strong>ID:</strong> D003</p>
          <p><strong>Specialty:</strong> Corneal Surgery</p>
          <p><strong>Phone:</strong> 9818170606</p>
          <p><strong>Email:</strong> minascoroneo003@gmail.com</p>
        </div>
        <div class="actions">
          <button class="btn-info"><i class="fas fa-info-circle"></i> Info</button>
          <button class="btn-book"><i class="fas fa-calendar-plus"></i> Book a Date</button>
        </div>
      </div>

      <!-- Card 4 -->
      <div class="doctor-card">
        <img src="${pageContext.request.contextPath}/images/David.png" alt="Dr. David F. Chang" />
        <div class="info">
          <h3>Dr. David F. Chang</h3>
          <p><strong>ID:</strong> D004</p>
          <p><strong>Specialty:</strong> Cataract Surgery</p>
          <p><strong>Phone:</strong> 9803401273</p>
          <p><strong>Email:</strong> davidchang004@gmail.com</p>
        </div>
        <div class="actions">
          <button class="btn-info"><i class="fas fa-info-circle"></i> Info</button>
          <button class="btn-book"><i class="fas fa-calendar-plus"></i> Book a Date</button>
        </div>
      </div>

      <!-- Card 5 -->
      <div class="doctor-card">
        <img src="${pageContext.request.contextPath}/images/Joel.jpg" alt="Dr. Joel S. Schuman" />
        <div class="info">
          <h3>Dr. Joel S. Schuman</h3>
          <p><strong>ID:</strong> D005</p>
          <p><strong>Specialty:</strong> Glaucoma Specialist</p>
          <p><strong>Phone:</strong> 9745913033</p>
          <p><strong>Email:</strong> joelschuman005@gmail.com</p>
        </div>
        <div class="actions">
          <button class="btn-info"><i class="fas fa-info-circle"></i> Info</button>
          <button class="btn-book"><i class="fas fa-calendar-plus"></i> Book a Date</button>
        </div>
      </div>

      <!-- Card 6 -->
      <div class="doctor-card">
        <img src="${pageContext.request.contextPath}/images/Dennis .webp" alt="Dr. Dennis S.C. Lam" />
        <div class="info">
          <h3>Dr. Dennis S.C. Lam</h3>
          <p><strong>ID:</strong> D006</p>
          <p><strong>Specialty:</strong> Refractive Surgery</p>
          <p><strong>Phone:</strong> 9851888105</p>
          <p><strong>Email:</strong> dennislam006@gmail.com</p>
        </div>
        <div class="actions">
          <button class="btn-info"><i class="fas fa-info-circle"></i> Info</button>
          <button class="btn-book"><i class="fas fa-calendar-plus"></i> Book a Date</button>
        </div>
      </div>

      <!-- Card 7 -->
      <div class="doctor-card">
        <img src="${pageContext.request.contextPath}/images/Charles.jpeg" alt="Dr. Charles N.J. McGhee" />
        <div class="info">
          <h3>Dr. Charles N.J. McGhee</h3>
          <p><strong>ID:</strong> D007</p>
          <p><strong>Specialty:</strong> Cornea Specialist</p>
          <p><strong>Phone:</strong> 9807890123</p>
          <p><strong>Email:</strong> charlesmcghee007@gmail.com</p>
        </div>
        <div class="actions">
          <button class="btn-info"><i class="fas fa-info-circle"></i> Info</button>
          <button class="btn-book"><i class="fas fa-calendar-plus"></i> Book a Date</button>
        </div>
      </div>

      <!-- Card 8 -->
      <div class="doctor-card">
        <img src="${pageContext.request.contextPath}/images/Jost.jpg" alt="Dr. Jost B. Jonas" />
        <div class="info">
          <h3>Dr. Jost B. Jonas</h3>
          <p><strong>ID:</strong> D008</p>
          <p><strong>Specialty:</strong> Optic Nerve Diseases</p>
          <p><strong>Phone:</strong> 9808901234</p>
          <p><strong>Email:</strong> jostjonas008@gmail.com</p>
        </div>
        <div class="actions">
          <button class="btn-info"><i class="fas fa-info-circle"></i> Info</button>
          <button class="btn-book"><i class="fas fa-calendar-plus"></i> Book a Date</button>
        </div>
      </div>
    </div>
  </main>
</body>
</html>
