<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Vision Test Report – Sita Lama</title>

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <!-- Custom CSS -->
  <link href="${pageContext.request.contextPath}/css/VisionTest.css" rel="stylesheet"/>
</head>
<body>
  <!-- SIDEBAR -->
  <div class="sidebar">
    <nav>
      <a href="${pageContext.request.contextPath}/DoctorDashboard.jsp"><i class="fas fa-home"></i> Dashboard</a>
      <a href="${pageContext.request.contextPath}/AppointmentSchedule.jsp"><i class="fas fa-calendar-alt"></i> Appointment Schedule</a>
      <a href="${pageContext.request.contextPath}/PatientRecord.jsp"><i class="fas fa-id-card"></i> Patient Records</a>
      <a href="${pageContext.request.contextPath}/AddTreatment.jsp"><i class="fas fa-procedures"></i> Add Treatment</a>
      <a href="${pageContext.request.contextPath}/VisionTest.jsp" class="active"><i class="fas fa-eye"></i> Vision Tests</a>
      <a href="${pageContext.request.contextPath}/DoctorProfileSettings.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
    </nav>
  </div>

  <!-- MAIN CONTENT -->
  <div class="main-content">
    <!-- Header -->
    <div class="page-header">
      <i class="fas fa-file-alt"></i> Vision Test Report
      <span style="font-size:1rem; color:#555; margin-left:1rem;">
        Sita Lama (P‑1024)
      </span>
    </div>

    <!-- Patient Info -->
    <div class="report-card">
      <h5><i class="fas fa-user-circle"></i> Patient Info</h5>
      <div class="section-content">
        <strong>Name:</strong> Sita Lama<br/>
        <strong>ID:</strong> P‑1024<br/>
        <strong>Age/Gender:</strong> 29 / Female<br/>
        <strong>Test Taken On:</strong> 2025‑04‑15 10:30 AM<br/>
        <strong>Test Type:</strong> Clinic Device
      </div>
    </div>

    <!-- Visual Acuity -->
    <div class="report-card">
      <h5><i class="fas fa-chart-line"></i> Visual Acuity Test</h5>
      <div class="chart-wrapper">
        <canvas id="acuityChart"></canvas>
      </div>
      <div class="section-content">
        20/40 (Right Eye), 20/30 (Left Eye)
      </div>
    </div>

    <!-- Color Blindness -->
    <div class="report-card">
      <h5><i class="fas fa-adjust"></i> Color Blindness Test</h5>
      <div class="section-content">
        <strong>Plates Correct:</strong> 5 / 6<br/>
        <strong>Interpretation:</strong> Mild deficiency
      </div>
    </div>

    <!-- Astigmatism -->
    <div class="report-card">
      <h5><i class="fas fa-eye-dropper"></i> Astigmatism Test</h5>
      <div class="section-content">
        Blurred lines at 90°
      </div>
    </div>

    <!-- Contrast Sensitivity -->
    <div class="report-card">
      <h5><i class="fas fa-adjust"></i> Contrast Sensitivity Test</h5>
      <div class="section-content">
        Weak — possible retinal concern
      </div>
    </div>

    <!-- Peripheral Vision -->
    <div class="report-card">
      <h5><i class="fas fa-arrows-alt-h"></i> Peripheral Vision Test</h5>
      <div class="section-content">
        Success rate: 85 %
      </div>
    </div>

    <!-- Doctor Notes & Actions -->
    <div class="report-card">
      <h5><i class="fas fa-notes-medical"></i> Doctor’s Notes</h5>
      <textarea rows="4" style="width:100%;border:1px solid #ccc;border-radius:6px;padding:8px;">Needs further refraction test in left eye.</textarea>
      <div class="actions-bar">
        <button><i class="fas fa-download"></i> Download PDF</button>
        <button><i class="fas fa-check-circle"></i> Mark as Reviewed</button>
        <button><i class="fas fa-calendar-plus"></i> Schedule Follow-up</button>
      </div>
    </div>
  </div>

  <!-- Chart.js script for Visual Acuity -->
  <script>
    const ctx = document.getElementById('acuityChart').getContext('2d');
    new Chart(ctx, {
      type: 'line',
      data: {
        labels: ['2025-01-10','2025-02-14','2025-03-20','2025-04-15'],
        datasets: [{
          label: 'Right Eye',
          data: [0.8, 0.7, 0.6, 0.5],
          borderColor: '#2ea6db',
          fill: false,
          tension: 0.3
        },{
          label: 'Left Eye',
          data: [0.9, 0.85, 0.75, 0.67],
          borderColor: '#135fa0',
          fill: false,
          tension: 0.3
        }]
      },
      options: {
        scales: {
          y: {
            beginAtZero: false,
            suggestedMin: 0.4,
            suggestedMax: 1,
            ticks: {
              callback: v => `20/${Math.round(20/v)}`,
              color: '#135fa0'
            }
          },
          x: { ticks: { color: '#333' } }
        },
        plugins: { legend: { position: 'bottom' } },
        responsive: true,
        maintainAspectRatio: false
      }
    });
  </script>
</body>
</html>