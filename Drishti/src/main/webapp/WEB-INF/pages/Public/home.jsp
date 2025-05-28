<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drishti Eye Care - Home</title>

    <!-- Font Awesome for icons -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
          integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Link to your local style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Publiccss/style.css">
</head>
<body>

<!-- NAVBAR -->
<nav class="navbar">
    <ul class="nav-menu">
        <li><a href="${pageContext.request.contextPath}/Home" class="active">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/AboutUs">About Us</a></li>
        <li><a href="${pageContext.request.contextPath}/Teams">Our Teams</a></li>
        <li><a href="${pageContext.request.contextPath}/ContactUs">Contact Us</a></li>
        <li><a href="${pageContext.request.contextPath}/login">Login/Sign Up</a></li>
    </ul>
</nav>

<!-- HERO -->
<div class="col-1">
<img src="${pageContext.request.contextPath}/resources/images/homep.png" alt="Hero Banner" class="hero-bg" />
    <h1>Protecting Your Vision, <br>Enhancing Your Life</h1>
    <h2><b>किनकि तपाईंको DRISHITI पहिले आउँछ !</b></h2>
    <a href="${pageContext.request.contextPath}/login" class="appointment-button"><b>Book An Appointment</b></a>
    
</div>

<!-- SERVICES -->
<div class="container">
    <div class="title-section">
        <h2 class="main-title">Discover Our Key Services</h2>
        <p>From online appointments to optical shop access – we've built everything to serve your eyes better.</p>
    </div>
    <div class="card-section">
        <div class="card"><i class="fa-solid fa-calendar-check"></i><p>Schedule appointments anytime, anywhere</p></div>
        <div class="card"><i class="fa-solid fa-file-medical"></i><p>Access secure medical history with ease</p></div>
        <div class="card"><i class="fa-solid fa-laptop-medical"></i><p>Connect with ophthalmologists remotely</p></div>
        <div class="card"><i class="fa-solid fa-store"></i><p>View prescripted glasses design online</p></div>
        <div class="card"><i class="fa-solid fa-square-poll-horizontal"></i><p>Personalized dashboard with relevant data</p></div>
        <div class="card"><i class="fa-solid fa-user-doctor"></i><p>Doctors manage schedules with ease</p></div>
        <div class="card"><i class="fa-solid fa-video"></i><p>Telemedicine video consultations available</p></div>
        <div class="card"><i class="fa-solid fa-comment"></i><p>Connect Through Feedback</p></div>
    </div>
</div>

<!-- INTRO SECTION -->
<div class="div-intro show">
    <div class="intro-text fade-in-up">
        <h2>Introduction to Drishti Eye Care</h2>
        <p>At Drishti Eye Care, our mission is rooted in delivering accessible, quality eye care to every individual. Driven by a passion for vision restoration, Drishiti continues to expand its services with compassion and innovation at the core.</p>
    </div>
    <div class="intro-image fade-in-up">
        <img src="${pageContext.request.contextPath}/resources/images/dr%20sanduk.webp" alt="Dr Sanduk Ruit" />
    </div>
</div>

<!-- TRUSTED SECTION -->
<div class="trusted-banner"
     style="background: linear-gradient(rgba(25, 82, 143, 0.6), rgba(25, 82, 143, 0.6)), 
     url('${pageContext.request.contextPath}/resources/images/nepaltrust.png') center top / cover no-repeat;">
    <div class="trusted-banner-text">
        <span class="trust-heading fade-in-up ">Nepal Trusts Us</span>
        <span class="patient-count fade-in-up active">
            <span class="highlight">10,000+</span> Patients Treated
        </span>
        <p class="trust-description fade-in-up active">
            Through years of dedicated service and advanced eye care solutions, we’ve reached patients across Nepal...
        </p>
    </div>
</div>




<!-- SLIDESHOW / OPTICAL STORE -->
<div class="promo-section">
    <div class="promo-content">
        <h1>Drishiti Optical Store</h1>
        <p>Find Your Perfect Frame, See Your World Clearly. <b>Shop Drishti Eyewear Now.</b></p>
        <a href="#" class="explore-button">Explore more</a>
    </div>
    <div class="promo-slideshow">
        <img src="${pageContext.request.contextPath}/resources/images/2.jpg" alt="Slide 1" class="slide active" />
        <img src="${pageContext.request.contextPath}/resources/images/4.jpg" alt="Slide 2" class="slide" />
        <img src="${pageContext.request.contextPath}/resources/images/3.jpg" alt="Slide 3" class="slide" />
        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" alt="Slide 4" class="slide" />
    </div>
</div>

<!-- FOOTER -->
<footer class="footer">
    <div class="footer-container">
        <div class="footer-column">
            <h3>Drishiti Eye Hospital</h3>
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
        <p>© 2025 Drishiti Eye Hospital. All rights reserved.</p>
        <div><a href="#">Privacy Policy</a> | <a href="#">Terms & Conditions</a></div>
    </div>
</footer>

<!-- JS for slideshow -->
<script>
  // Slideshow
  let currentSlide = 0;
  const slides = document.querySelectorAll('.promo-slideshow .slide');

  function showSlide(index) {
    slides.forEach((slide, i) => {
      slide.classList.remove('active');
      if (i === index) {
        slide.classList.add('active');
      }
    });
  }

  function nextSlide() {
    currentSlide = (currentSlide + 1) % slides.length;
    showSlide(currentSlide);
  }

  setInterval(nextSlide, 3000);

  // Scroll-triggered fade-in
  function triggerFadeIn() {
    const fadeElements = document.querySelectorAll('.fade-in-up');
    const triggerPoint = window.innerHeight * 0.9;

    fadeElements.forEach(el => {
      const rect = el.getBoundingClientRect();
      if (rect.top < triggerPoint && !el.classList.contains('active')) {
        el.classList.add('active');
      }
    });
  }

  // Attach both events
  window.addEventListener('scroll', triggerFadeIn);
  window.addEventListener('load', () => {
    triggerFadeIn();
    showSlide(currentSlide);
  });
</script>


</body>
</html>
