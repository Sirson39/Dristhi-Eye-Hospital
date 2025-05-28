<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Feedback & Reviews</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Patientcss/feedback.css" />
  <style>
    .modal {
  display: none;
  position: fixed;
  z-index: 9999;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.4);
  backdrop-filter: blur(2px);
  animation: fadeIn 0.3s ease;
}
    .modal-content {
  background: #fff;
  margin: 15% auto;
  padding: 30px 40px;
  border-radius: 12px;
  width: 320px;
  text-align: center;
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
  animation: slideIn 0.4s ease;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
    .modal-content h3 {
  color: #333;
  font-size: 20px;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 8px;
  margin-bottom: 20px;
}
.modal-content h3::before {
  content: "✔";
  font-size: 20px;
  color: #333;
}
    .close-btn {
  background: #444;
  color: white;
  border: none;
  padding: 10px 24px;
  border-radius: 6px;
  font-size: 15px;
  font-weight: 500;
  cursor: pointer;
  transition: background 0.3s ease;
}

.close-btn:hover {
  background: #222;
}

@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

@keyframes slideIn {
  from {
    transform: translateY(-30px);
    opacity: 0;
  }
  to {
    transform: translateY(0);
    opacity: 1;
  }
}

    .sidebar {
      width: 250px;
      height: 100vh;
      background-color: #135fa0;
      color: white;
      padding: 2rem 1rem;
      position: fixed;
    }

    .sidebar a {
      display: flex;
      align-items: center;
      gap: 10px;
      color: white;
      text-decoration: none;
      padding: 1rem;
      margin-bottom: 1rem;
      border-radius: 8px;
      transition: background 0.3s;
    }

    .sidebar a.active,
    .sidebar a:hover {
      background-color: #2ea6db;
    }

    .star-wrapper {
      display: flex;
      flex-direction: row-reverse;
      justify-content: flex-start;
      gap: 5px;
      margin-top: 8px;
    }

    .star-wrapper input[type="radio"] {
      display: none;
    }

    .star-wrapper label {
      font-size: 28px;
      color: #ccc;
      cursor: pointer;
      transition: color 0.2s;
    }

    .star-wrapper input[type="radio"]:checked ~ label,
    .star-wrapper label:hover,
    .star-wrapper label:hover ~ label {
      color: gold;
    }
  </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
  <h2>My Dashboard</h2>
  <a href="${pageContext.request.contextPath}/PatientDashboard"><i class="fas fa-chart-line"></i> My Dashboard</a>
  <a href="${pageContext.request.contextPath}/Patient/myappointment"><i class="fas fa-user-md"></i> My Appointments</a>
  <a href="${pageContext.request.contextPath}/Patient/BookAppointment"><i class="fas fa-calendar-check"></i> Book Appointments</a>
<<<<<<< HEAD
  <a href="${pageContext.request.contextPath}/Patient/mytreatments"><i class="fas fa-notes-medical"></i> My Treatments</a>
=======
<<<<<<< HEAD
  <a href="${pageContext.request.contextPath}/Patient/mytreatments"><i class="fas fa-notes-medical"></i> My Treatments</a>
=======
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
  <a href="${pageContext.request.contextPath}/Patient/feedback" class="active"><i class="fas fa-comment-dots"></i> Feedback</a>
  <a href="${pageContext.request.contextPath}/Patient/profile"><i class="fas fa-user-cog"></i> Profile Settings</a>
</div>

<!-- Modal -->
<div id="feedbackModal" class="modal">
  <div class="modal-content">
    <h3>Feedback submitted successfully!</h3>
    <button class="close-btn" onclick="closeModal()">OK</button>
  </div>
</div>

<!-- Main Content -->
<main class="main-content" style="margin-left: 270px; padding: 2rem;">
  <div class="dashboard-header"><i class="fas fa-comment-dots"></i> Feedback and Reviews</div>
  <p class="subtitle">Leave reviews for doctors or the hospital</p>

  <form class="review-form" method="post" action="${pageContext.request.contextPath}/SubmitFeedback">
    <div class="form-group">
      <label for="rating">Your Rating:</label>
      <div class="star-wrapper">
        <input type="radio" name="rating" id="star5" value="5" required /><label for="star5">★</label>
        <input type="radio" name="rating" id="star4" value="4" /><label for="star4">★</label>
        <input type="radio" name="rating" id="star3" value="3" /><label for="star3">★</label>
        <input type="radio" name="rating" id="star2" value="2" /><label for="star2">★</label>
        <input type="radio" name="rating" id="star1" value="1" /><label for="star1">★</label>
      </div>
    </div>

    <label for="message">Your Review:</label>
    <textarea id="message" name="message" rows="6" placeholder="Write your feedback here..." required></textarea>

    <button type="submit">Submit Feedback</button>
  </form>
</main>

<!-- JavaScript -->
<script>
  function closeModal() {
    document.getElementById("feedbackModal").style.display = "none";
    const url = new URL(window.location);
    url.searchParams.delete("fb");
    history.replaceState({}, '', url);
  }

  window.addEventListener('DOMContentLoaded', () => {
    const params = new URLSearchParams(window.location.search);
    if (params.get("fb") === "1") {
      document.getElementById("feedbackModal").style.display = "block";
    }
  });
</script>

</body>
</html>
