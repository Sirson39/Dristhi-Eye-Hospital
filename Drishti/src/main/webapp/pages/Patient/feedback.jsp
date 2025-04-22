<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Feedback & Reviews</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Patientcss/feedback.css" />
</head>
<body>

  <div class="sidebar">
    <h2>My Dashboard</h2>
    <a href="${pageContext.request.contextPath}/PatientDashboard.jsp"><i class="fas fa-chart-line"></i> My Dashboard</a>
    <a href="${pageContext.request.contextPath}/testreport.jsp"><i class="fas fa-notes-medical"></i> Test Reports</a>
    <a href="${pageContext.request.contextPath}/myappointment.jsp"><i class="fas fa-user-md"></i> My Appointments</a>
    <a href="${pageContext.request.contextPath}/BookAppointment.jsp"><i class="fas fa-calendar-check"></i> Book Appointments</a>
    <a href="${pageContext.request.contextPath}/Billing.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/Feedback.jsp" class="active"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/myprofile.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <main class="main-content">
    <div class="dashboard-header"><i class="fas fa-comment-dots"></i> Feedback and Reviews</div>
    <p class="subtitle">Leave reviews for doctors or hospital</p>

    <form class="review-form" method="post" action="${pageContext.request.contextPath}/submitFeedback">
      <label for="reviewFor">Who are you reviewing?</label>
      <select id="reviewFor" name="reviewFor" required>
        <option value="">-- Select --</option>
        <option value="Dr. Sharma">Dr. Sharma</option>
        <option value="Dr. Koirala">Dr. Koirala</option>
        <option value="Dhristi Eye Care Hospital">Dhristi Eye Care Hospital</option>
      </select>

      <label for="rating">Your Rating:</label>
      <div class="stars">
        <input type="radio" name="rating" id="star5" value="5" /><label for="star5">★</label>
        <input type="radio" name="rating" id="star4" value="4" /><label for="star4">★</label>
        <input type="radio" name="rating" id="star3" value="3" /><label for="star3">★</label>
        <input type="radio" name="rating" id="star2" value="2" /><label for="star2">★</label>
        <input type="radio" name="rating" id="star1" value="1" /><label for="star1">★</label>
      </div>

      <label for="message">Your Review:</label>
      <textarea id="message" name="message" rows="10" placeholder="Write your feedback here..." required></textarea>

      <button type="submit">Submit Review</button>
    </form>
  </main>
</body>
</html>
