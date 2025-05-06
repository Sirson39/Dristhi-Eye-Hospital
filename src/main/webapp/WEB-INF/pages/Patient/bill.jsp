<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Billing and Payments</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Patientcss/bill.css" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
</head>
<body>

  <div class="sidebar">
    <h2>My Dashboard</h2>
    <a href="${pageContext.request.contextPath}/dashboard.jsp"><i class="fas fa-chart-line"></i> My Dashboard</a>
    <a href="${pageContext.request.contextPath}/testreport.jsp"><i class="fas fa-notes-medical"></i> Test Reports</a>
    <a href="${pageContext.request.contextPath}/myappointment.jsp"><i class="fas fa-user-md"></i> My Appointments</a>
    <a href="${pageContext.request.contextPath}/bookappointment.jsp"><i class="fas fa-calendar-check"></i> Book Appointments</a>
    <a href="${pageContext.request.contextPath}/Billing.jsp" class="active"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/feedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/myprofile.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <main class="main-content">
    <div class="dashboard-header"><i class="fas fa-file-invoice-dollar"></i> Billing and Payment</div>

    <div class="bill-container">
      <div class="bill-header">Drishti Eye Care</div>
      <div class="bill-body">
        <div class="patient-info">
          <p>Patient name : _____________</p>
          <p>Address : _____________</p>
          <p>Phone no. : _____________</p>
          <p>Age : _____________</p>
        </div>
        <div class="bed-info">
          <p>Bed no. : _____________</p>
          <p>Date : _____________</p>
          <p>Admission Date : _____________</p>
          <p>Discharge Date : _____________</p>
        </div>

        <table>
          <thead>
            <tr>
              <th>S.No.</th>
              <th>Medicine</th>
              <th>Doctor Charge</th>
              <th>Nursing Charge</th>
              <th>Equipment</th>
              <th>Amount</th>
            </tr>
          </thead>
          <tbody>
            <!-- Sample Row -->
            <tr>
              <td>1</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
            <!-- Add more rows as needed -->
          </tbody>
          <tfoot>
            <tr>
              <td colspan="5" style="text-align: right;"><strong>Total Bill</strong></td>
              <td></td>
            </tr>
          </tfoot>
        </table>
      </div>
    </div>
  </main>
</body>
</html>