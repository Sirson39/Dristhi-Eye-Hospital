<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Drishti Eye Care – Our Teams</title>
  <!-- your existing stylesheet -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Publiccss/style.css" />
  <!-- font-awesome (if you need icons) -->
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
    integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
    crossorigin="anonymous"
    referrerpolicy="no-referrer"
  />
</head>
<body>
  <!-- NAVBAR -->
  <nav class="navbar">
    <ul class="nav-menu">
      <li><a href="${pageContext.request.contextPath}/Home">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/AboutUs">About Us</a></li>
      <li><a href="${pageContext.request.contextPath}/Teams" class="active">Our Teams</a></li>
      <li><a href="${pageContext.request.contextPath}/ContactUs">Contact Us</a></li>
      <li><a href="${pageContext.request.contextPath}/login">Login/Sign Up</a></li>
    </ul>
  </nav>

  <!-- BANNER -->
  <div class="doctor-banner-container">
    <h1 class="doctor-heading-title">OUR TEAMS</h1>
  </div>

  <section class="team-section">
  <h2 class="team-section__title">Meet Our Teams</h2>
  <div class="team-cards">
    <div class="team-card">
      <img src="${pageContext.request.contextPath}/resources/images/team1.jpg"
           alt="Dr. Adam Jonson" class="team-card__img"/>
      <h3 class="team-card__name">Dr. Sanduk Ruit</h3>
      <p class="team-card__role">Medical Director</p>
      <p class="team-card__desc">
        Renowned ophthalmologist with decades of experience leading global eye health initiatives. Passionate about restoring vision and driving innovation in surgical care.
      </p>
    </div>

    <div class="team-card">
      <img src="${pageContext.request.contextPath}/resources/images/team2.jpeg"
           alt="Dr. Marry Hudson" class="team-card__img"/>
      <h3 class="team-card__name">Dr. Marry Karki </h3>
      <p class="team-card__role">Physician Assistant</p>
      <p class="team-card__desc">
        Dedicated to patient care and clinical excellence, Dr. Karki supports diagnostics and treatment planning with compassion and precision.
      </p>
    </div>

    <div class="team-card">
      <img src="${pageContext.request.contextPath}/resources/images/team3.webp"
           alt="Dr. Simon Larson" class="team-card__img"/>
      <h3 class="team-card__name">Sabin Lama</h3>
      <p class="team-card__role">Cleaning Staff</p>
      <p class="team-card__desc">
        Maintains the highest standards of hygiene and safety across hospital premises. A crucial member ensuring a clean, infection-free environment.
      </p>
    </div>

    <div class="team-card">
      <img src="${pageContext.request.contextPath}/resources/images/team4.jpg"
           alt="Dr. Alice Meyers" class="team-card__img"/>
      <h3 class="team-card__name">Admin Rai</h3>
      <p class="team-card__role">Nurse</p>
      <p class="team-card__desc">
      Committed to delivering attentive, empathetic nursing care. Skilled in patient monitoring, medication administration, and recovery support.
      </p>
    </div>

    <div class="team-card">
      <img src="${pageContext.request.contextPath}/resources/images/team5.jpg"
           alt="Dr. Robert King" class="team-card__img"/>
      <h3 class="team-card__name">Dr. Ujjwal Shah</h3>
      <p class="team-card__role">Lab Assistance</p>
      <p class="team-card__desc">
        Expert in diagnostic testing and laboratory processes, supporting accurate and timely medical assessments behind the scenes.
      </p>
    </div>
  </div>
</section>
  

  <!-- FOOTER -->
  <footer class="footer">
    <div class="footer-container">
      <div class="footer-column">
        <h3>Drishti Eye Hospital</h3>
        <ul>
          		<li><a href="${pageContext.request.contextPath}/Home">Home</a></li>
        		<li><a href="${pageContext.request.contextPath}/AboutUs">About Us</a></li>
        		<li><a href="${pageContext.request.contextPath}/Teams">Our Teams</a></li>
        		<li><a href="${pageContext.request.contextPath}/ContactUs">Contact Us</a></li>
        		<li><a href="${pageContext.request.contextPath}/login">Registration</a></li>
        </ul>
      </div>
      <div class="footer-column">
        <h3>For Patient Support</h3>
        <ul>
          <li><a href="${pageContext.request.contextPath}/ContactUs">24/7 Helpline</a></li>
          <li><a href="${pageContext.request.contextPath}/login">Appointment Booking</a></li>
          <li><a href="${pageContext.request.contextPath}/Teams">Our Teams</a></li>
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
          		<a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a>
        		<a href="https://twitter.com/"          target="_blank"><i class="fab fa-twitter"></i></a>
        		<a href="https://www.linkedin.com/"     target="_blank"><i class="fab fa-linkedin-in"></i></a>
        		<a href="https://instagram.com/"         target="_blank"><i class="fab fa-instagram"></i></a>  
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
</body>
</html>
