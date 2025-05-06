<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drishti Eye Care - Home</title>
    <!-- Swiper JS for promotional slideshow -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Publiccss/style.css" />
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
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

  <div class="col-1">
    <h1>Protecting Your Vision, <br>Enhancing Your Life</h1>
    <h2><b>किनकि तपाईंको DRISHITI पहिले आउँछ !</b></h2>
    <a href="${pageContext.request.contextPath}/BookAppointment.jsp" class="appointment-button"><b>Book An Appointment</b></a>
  </div>

  <div class="container">
    <div class="title-section">
      <h2 class="main-title">Discover Our Key Services</h2>
      <p>From online appointments to optical shop access – we've built everything to serve your eyes better.</p>
    </div>
    <div class="card-section">
      <div class="card">
        <i class="fa-solid fa-calendar-check"></i>
        <p>Schedule appointments anytime, anywhere</p>
      </div>
      <div class="card">
        <i class="fa-solid fa-file-medical"></i>
        <p>Access secure medical history with ease</p>
      </div>
      <div class="card">
        <i class="fa-solid fa-laptop-medical"></i>
        <p>Connect with ophthalmologists remotely</p>
      </div>
      <div class="card">
        <i class="fa-solid fa-store"></i>
        <p>View prescripted glasses design online</p>
      </div>
      <div class="card">
        <i class="fa-solid fa-square-poll-horizontal"></i>
        <p>Get a personalized dashboard that displays relevant data</p>
      </div>
      <div class="card">
        <i class="fa-solid fa-user-doctor"></i>
        <p>Doctors manage schedules with ease</p>
      </div>
      <div class="card">
        <i class="fa-solid fa-video"></i>
        <p>Telemedicine video consultations available</p>
      </div>
      <div class="card">
        <i class="fa-solid fa-comment"></i>
        <p>Connect Through Feedback</p>
      </div>
    </div>
  </div>

  <div class="div-intro">
    <div class="intro-text">
      <h2>Introduction to Drishti Eye Care</h2>
      <p>At Drishti Eye Care, our mission is rooted in delivering accessible, quality eye care to every individual. Driven by a passion for vision restoration, Drishti continues to expand its services with compassion and innovation at the core. One of our greatest inspirations is Dr. Sanduk Ruit, whose legacy of selfless service and groundbreaking medical work motivates us daily. His commitment to transforming lives through sight aligns perfectly with our values and vision.</p>
    </div>
    <div class="intro-image">
      <img src="${pageContext.request.contextPath}/images/dr%20sanduk.webp" alt="Dr Sanduk Ruit" />
    </div>
  </div>

  <div class="trusted-banner">
    <span class="trust-heading fade-in-up">Nepal Trusts Us</span>
    <span class="patient-count fade-in-up">
      <span class="highlight">10,000+</span> Patients Treated
    </span>
    <p class="trust-description fade-in-up">
      Through years of dedicated service and advanced eye care solutions, we’ve reached patients in every corner of Nepal. From urban hospitals to rural outreach camps, our expert team has restored vision and brought hope to thousands. Our journey began with a vision to make eye care accessible, and today, that vision is becoming reality—one patient at a time.
    </p>
  </div>

  <div class="promo-section">
    <div class="promo-content">
      <h1>Drishti Optical Store</h1>
      <p>Find Your Perfect Frame, See Your World Clearly.<b> Shop Drishti Eyewear Now.</b></p>
      <a href="${pageContext.request.contextPath}/OpticalStore.jsp" class="explore-button">Explore more</a>
    </div>
    <div class="promo-slideshow">
      <img src="${pageContext.request.contextPath}/images/1.jpg" alt="Slideshow Image 1" class="slide active" />
      <img src="${pageContext.request.contextPath}/images/2.jpg" alt="Slideshow Image 2" class="slide" />
      <img src="${pageContext.request.contextPath}/images/3.jpg" alt="Slideshow Image 3" class="slide" />
      <img src="${pageContext.request.contextPath}/images/4.jpg" alt="Slideshow Image 4" class="slide" />
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

  <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>