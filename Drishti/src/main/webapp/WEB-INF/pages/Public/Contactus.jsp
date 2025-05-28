<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us – Dhrishti Eye Hospital</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Publiccss/style.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
          integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
  <nav class="navbar">
    <ul class="nav-menu">
      <li><a href="${pageContext.request.contextPath}/Home" class="active">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/AboutUs">About Us</a></li>
      <li><a href="${pageContext.request.contextPath}/Teams">Our Teams</a></li>
      <li><a href="${pageContext.request.contextPath}/ContactUs">Contact Us</a></li>
      <li><a href="${pageContext.request.contextPath}/login">Login/Sign Up</a></li>
    </ul>
  </nav>

    <!-- Main Contact Section -->
<main class="contact-section">
  <h2 class="section-title">GET IN TOUCH</h2>

  <div class="contact-row">
    <div class="contact-item">
      <div class="icon-circle">
        <i class="fas fa-phone-alt"></i>
      </div>
      <h3>Phone</h3>
      <p>+977 982983720, +01 0223434<br/>Mon–Fri, 9am – 6pm</p>
    </div>

    <div class="contact-item">
      <div class="icon-circle">
        <i class="fas fa-envelope"></i>
      </div>
      <h3>Email</h3>
      <p>info@drishtieyecare.com<br/>We’ll reply within 24 hrs</p>
    </div>

    <div class="contact-item">
      <div class="icon-circle">
        <i class="fas fa-map-marker-alt"></i>
      </div>
      <h3>Visit Us</h3>
      <p>Kamalpokhari, Street 13<br/>Kathmandu, Nepal</p>
    </div>
  </div>
    
      <div class="bottom-section">
        <!-- Left: Message Info -->
        <div class="message-info">
          <h2 class="section-title-left">Message Us</h2>
          <p>If you want to be considered for consultation or feedback, please complete the form and our team will get back to you shortly after reviewing your submitted information.</p>
          <div class="badge-box">
            <img src="${pageContext.request.contextPath}/resources/images/Logo.png" alt="Award Logo"/>
            <div class="badge-text">
              <strong>Best Eye Hospital<br/>for The year 2025</strong><br/>
              Trust • Vision • Innovation
            </div>
          </div>
        </div>
    
        <!-- Right: Contact Form -->
        <div class="contact-form">
          <form method="post" action="${pageContext.request.contextPath}/submitContact">
            <div class="form-group-full">
              <label for="comments">Comments</label>
              <textarea id="comments" name="comments" rows="4" placeholder="Write your message here..." required></textarea>
            </div>
            <button type="submit" class="submit-btn">Submit</button>
          </form>
        </div>
      </div>
    </main>
    
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
