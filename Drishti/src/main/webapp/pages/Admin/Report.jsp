<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Report – Dhristi Eye Hospital</title>

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <!-- Custom CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Admincss/Report.css"/>
</head>
<body>
  <div class="sidebar">
    <h2>Dhristi Admin</h2>
    <a href="${pageContext.request.contextPath}/AdminDashboard.jsp"><i class="fas fa-chart-line"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/ManageDoctors.jsp"><i class="fas fa-user-md"></i> Manage Doctors</a>
    <a href="${pageContext.request.contextPath}/ManagePatients.jsp"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="${pageContext.request.contextPath}/ManageAppointments.jsp"><i class="fas fa-calendar-check"></i> Appointments</a>
    <a href="${pageContext.request.contextPath}/ManageBilling.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/ManageFeedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Report.jsp" class="active"><i class="fas fa-chart-pie"></i> Reports</a>
    <a href="${pageContext.request.contextPath}/ProfileSettings.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <div class="main-content">

    <!-- Appointment Reports -->
    <div class="dashboard-header">Appointment Reports</div>
    <p class="section-intro">Track appointment volumes and statuses over time to optimize scheduling.</p>
    <div class="cards">
      <div class="card"><h3>Daily</h3><p>45</p></div>
      <div class="card"><h3>Weekly</h3><p>312</p></div>
      <div class="card"><h3>Monthly</h3><p>1,240</p></div>
      <div class="card"><h3>Custom</h3><p>—</p></div>
    </div>
    <div class="chart-container"><h3>Over Time</h3><canvas id="apptTimeChart"></canvas></div>
    <div class="chart-container"><h3>By Doctor</h3><canvas id="apptDoctorChart"></canvas></div>
    <div class="chart-container"><h3>Status</h3><canvas id="apptStatusChart"></canvas></div>

    <!-- Billing & Financial Reports -->
    <div class="dashboard-header">Billing &amp; Financial</div>
    <p class="section-intro">Analyze revenue and payment breakdowns to maintain fiscal health.</p>
    <div class="cards">
      <div class="card"><h3>Daily Rev</h3><p>NPR 20.4K</p></div>
      <div class="card"><h3>Monthly Rev</h3><p>NPR 550K</p></div>
      <div class="card"><h3>Yearly Rev</h3><p>NPR 6.2M</p></div>
      <div class="card"><h3>Outstanding</h3><p>NPR 45K</p></div>
    </div>
    <div class="chart-container"><h3>Rev Over Time</h3><canvas id="revTimeChart"></canvas></div>
    <div class="chart-container"><h3>Payment Methods</h3><canvas id="payMethodChart"></canvas></div>

    <!-- Patient Reports -->
    <div class="dashboard-header">Patient Reports</div>
    <p class="section-intro">Monitor patient growth and demographics to tailor services.</p>
    <div class="cards">
      <div class="card"><h3>Total Patients</h3><p>5,240</p></div>
      <div class="card"><h3>New (Range)</h3><p>128</p></div>
    </div>
    <div class="chart-container"><h3>Gender Dist.</h3><canvas id="genderChart"></canvas></div>
    <div class="chart-container"><h3>Age Groups</h3><canvas id="ageChart"></canvas></div>

    <!-- Doctor Activity -->
    <div class="dashboard-header">Doctor Activity</div>
    <p class="section-intro">Evaluate doctor workloads and feedback.</p>
    <div class="chart-container"><h3>Appts/Doctor</h3><canvas id="docApptChart"></canvas></div>
    <div class="chart-container"><h3>Avg. Feedback</h3><canvas id="docFeedbackChart"></canvas></div>

    <div class="cards">
      <div class="card"><h3>Sales Count</h3><p>1,820</p></div>
      <div class="card"><h3>Low Stock</h3><p>7</p></div>
    </div>

    <!-- Feedback Summary -->
    <div class="dashboard-header">Feedback Summary</div>
    <p class="section-intro">Summarize feedback volumes and sentiment.</p>
    <div class="cards">
      <div class="card"><h3>Total FB</h3><p>820</p></div>
      <div class="card"><h3>Avg. Rating</h3><p>4.3</p></div>
    </div>
    <div class="chart-container"><h3>FB by Type</h3><canvas id="feedbackTypeChart"></canvas></div>
    <div class="chart-container"><h3>Keywords</h3><canvas id="keywordsChart"></canvas></div>

  </div>

  <script>
    // 1. Appointment Over Time
    new Chart(document.getElementById('apptTimeChart'), {
      type: 'line',
      data: {
        labels: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
        datasets: [{ label: 'Appts', data: [45,52,38,60,55,40,30], fill:false, borderColor:'#135fa0' }]
      },
      options:{ responsive:true, maintainAspectRatio:false }
    });
    // 2. Appointments by Doctor
    new Chart(document.getElementById('apptDoctorChart'), {
      type: 'bar',
      data: {
        labels: ['Usha','David','Minas','Dennis','Charles'],
        datasets:[{ data:[120,98,75,110,85], backgroundColor:'#2ea6db', barPercentage:0.4, categoryPercentage:0.6 }]
      },
      options:{ responsive:true, maintainAspectRatio:false, scales:{ y:{ beginAtZero:true } } }
    });
    // 3. Appointment Status
    new Chart(document.getElementById('apptStatusChart'), {
      type: 'pie',
      data: {
        labels:['Completed','Cancelled','No-show','Pending'],
        datasets:[{ data:[312,28,45,15], backgroundColor:['#28a745','#e74c3c','#f1c40f','#2ea6db'] }]
      },
      options:{ responsive:true, maintainAspectRatio:false }
    });
    // 4. Revenue Over Time
    new Chart(document.getElementById('revTimeChart'), {
      type: 'line',
      data:{ labels:['Jan','Feb','Mar','Apr','May','Jun'], datasets:[{ label:'Rev', data:[150,180,170,200,190,220], fill:true, backgroundColor:'rgba(19,95,160,0.2)', borderColor:'#135fa0' }] },
      options:{ responsive:true, maintainAspectRatio:false }
    });
    // 5. Payment Methods
    new Chart(document.getElementById('payMethodChart'), {
      type:'doughnut',
      data:{ labels:['Cash','Card','Online','Insurance'], datasets:[{data:[320,210,150,80], backgroundColor:['#28a745','#2ea6db','#f1c40f','#e74c3c'] }] },
      options:{ responsive:true, maintainAspectRatio:false }
    });
    // 6. Gender Distribution
    new Chart(document.getElementById('genderChart'), {
      type:'pie',
      data:{ labels:['Male','Female','Other'], datasets:[{data:[2600,2500,140], backgroundColor:['#135fa0','#2ea6db','#7f8c8d'] }] },
      options:{ responsive:true, maintainAspectRatio:false }
    });
    // 7. Age Groups
    new Chart(document.getElementById('ageChart'), {
      type:'bar',
      data:{ labels:['<18','18–30','31–45','46–60','60+'], datasets:[{data:[150,1200,1900,1400,590], backgroundColor:'#2ea6db', barPercentage:0.4, categoryPercentage:0.6 }] },
      options:{ responsive:true, maintainAspectRatio:false, scales:{ y:{ beginAtZero:true } } }
    });
    // 8. Appts per Doctor
    new Chart(document.getElementById('docApptChart'), {
      type:'bar',
      data:{ labels:['Usha','David','Minas'], datasets:[{data:[320,280,240], backgroundColor:'#135fa0', barPercentage:0.4, categoryPercentage:0.6 }] },
      options:{ responsive:true, maintainAspectRatio:false, scales:{ y:{ beginAtZero:true } } }
    });
    // 9. Feedback per Doctor
    new Chart(document.getElementById('docFeedbackChart'), {
      type:'bar',
      data:{ labels:['Usha','David','Minas'], datasets:[{data:[4.5,4.2,4.7], backgroundColor:'#2ea6db', barPercentage:0.4, categoryPercentage:0.6 }] },
      options:{ responsive:true, maintainAspectRatio:false, scales:{ y:{ beginAtZero:true, max:5 } } }
    });
    // 10. Feedback by Type
    new Chart(document.getElementById('feedbackTypeChart'), {
      type:'pie',
      data:{ labels:['Doctor','Service','Appointment','Billing','Optical'], datasets:[{data:[320,180,100,90,130], backgroundColor:['#28a745','#2ea6db','#f1c40f','#e74c3c','#7f8c8d'] }] },
      options:{ responsive:true, maintainAspectRatio:false }
    });
    // 11. Common Keywords
    new Chart(document.getElementById('keywordsChart'), {
      type:'bar',
      data:{ labels:['delay','friendly','expensive','clean','waiting'], datasets:[{data:[120,260,80,140,90], backgroundColor:'#135fa0', barPercentage:0.4, categoryPercentage:0.6 }] },
      options:{ responsive:true, maintainAspectRatio:false, scales:{ y:{ beginAtZero:true } } }
    });
  </script>
</body>
</html>
