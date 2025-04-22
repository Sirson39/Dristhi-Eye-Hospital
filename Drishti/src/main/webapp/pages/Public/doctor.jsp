<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drishti Eye Care - Home</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Publiccss/style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
          integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
  <nav class="navbar">
    <ul class="nav-menu">
      <li><a href="${pageContext.request.contextPath}/Home.jsp" class="active">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/AboutUs.jsp">About Us</a></li>
      <li><a href="${pageContext.request.contextPath}/Doctors.jsp">Doctors</a></li>
      <li><a href="${pageContext.request.contextPath}/ContactUs.jsp">Contact Us</a></li>
      <li><a href="${pageContext.request.contextPath}/Login.jsp">Login/Sign Up</a></li>
    </ul>
  </nav>

  <div class="doctor-banner-container">
    <div class="doctor-breadcrum"></div>
    <h1 class="doctor-heading-title">DOCTOR LISTS</h1>
  </div>

  <!-- Search Bar Section -->
  <div class="search-section">
    <input type="text" id="searchInput" placeholder="Search Doctor" />
    <button onclick="filterDoctors()">Search</button>
  </div>

  <!-- Internal Medicine Section -->
  <div class="department-section">
    <h2 class="department-title">INTERNAL MEDICINE</h2>
    <div class="doctor-list" id="doctorList">
      <!-- Doctor Cards -->
      <div class="doctor-card" data-name="usha chakravarthy">
        <img src="${pageContext.request.contextPath}/images/Usha.jpeg" alt="Dr. Usha Chakravarthy" />
        <h3>Dr. Usha Chakravarthy</h3>
        <p>Retinal diseases research</p>
        <div class="doctor-buttons">
          <a href="${pageContext.request.contextPath}/DoctorProfile.jsp?doctor=usha" class="view-profile">View Profile</a>
          <a href="${pageContext.request.contextPath}/BookAppointment.jsp?doctor=usha" class="book-appointment">Book An Appointment</a>
        </div>
      </div>
      <!-- Add other doctor-card divs similarly -->
    </div>
  </div>

  <footer class="footer">
    <div class="footer-container">
      <div class="footer-column">
        <h3>Drishti Eye Hospital</h3>
        <ul>
          <li><a href="${pageContext.request.contextPath}/Home.jsp">Home</a></li>
          <li><a href="${pageContext.request.contextPath}/AboutUs.jsp">About Us</a></li>
          <li><a href="${pageContext.request.contextPath}/Doctors.jsp">Doctor Directory</a></li>
          <li><a href="${pageContext.request.contextPath}/ContactUs.jsp">Contact Us</a></li>
          <li><a href="${pageContext.request.contextPath}/Login.jsp">Registration</a></li>
        </ul>
      </div>
      <div class="footer-column">
        <h3>For Patient Support</h3>
        <ul>
          <li><a href="${pageContext.request.contextPath}/ContactUs.jsp">24/7 Helpline</a></li>
          <li><a href="${pageContext.request.contextPath}/BookAppointment.jsp">Appointment Booking</a></li>
          <li><a href="${pageContext.request.contextPath}/Doctors.jsp">Our Doctors</a></li>
        </ul>
      </div>
      <div class="footer-column">
        <h3>Top Insurances</h3>
        <ul>
          <li><a href="#">Aetna</a></li>
          <li><a href="#">Blue Shield</a></li>
          <li><a href="#">Health Net</a></li>
          <li><a href="#">View More</a></li>
        </ul>
      </div>
      <div class="footer-column">
        <h3>Follow Us</h3>
        <div class="social-icons">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-linkedin-in"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <p>© 2025 Drishti Eye Hospital. All rights reserved.</p>
      <div>
        <a href="#">Privacy Policy</a> | <a href="#">Terms & Conditions</a>
      </div>
    </div>
  </footer>

  <script>
    // Doctor directory search filtering
    function filterDoctors() {
      const input = document.getElementById('searchInput').value.toLowerCase();
      document.querySelectorAll('.doctor-card').forEach(card => {
        const name = card.getAttribute('data-name').toLowerCase();
        card.style.display = name.includes(input) ? 'block' : 'none';
      });
    }
  </script>

  <!-- Swiper JS (if used elsewhere) -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</body>
</html>