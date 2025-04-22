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
    <div class="sidebar">
      <h2>My Dashboard</h2>
      <a href="${pageContext.request.contextPath}/Home.jsp"><i class="fas fa-chart-line"></i> My Dashboard</a>
      <a href="${pageContext.request.contextPath}/AboutUs.jsp"><i class="fas fa-info-circle"></i> About Us</a>
      <a href="${pageContext.request.contextPath}/Doctors.jsp"><i class="fas fa-user-md"></i> Doctors</a>
      <a href="${pageContext.request.contextPath}/ContactUs.jsp" class="active"><i class="fas fa-map-marker-alt"></i> Contact Us</a>
      <a href="${pageContext.request.contextPath}/Login.jsp"><i class="fas fa-user-cog"></i> Login/Sign Up</a>
    </div>

    <!-- Main Contact Section -->
    <main class="contact-section">
      <h2 class="section-title">GET IN TOUCH</h2>
      <div class="team-container">
        <div class="team-card">
          <div class="icon-circle">
            <i class="fas fa-phone-alt"></i>
          </div>
          <p><strong>Phone</strong><br/>+977 982983720, +01 0223434<br/>Mon-Fri, 9am - 6pm</p>
        </div>
        <div class="team-card">
          <div class="icon-circle">
            <i class="fas fa-envelope"></i>
          </div>
          <p><strong>Email</strong><br/>info@drishitieyecare.com<br/>We'll reply within 24 hrs</p>
        </div>
        <div class="team-card">
          <div class="icon-circle">
            <i class="fas fa-map-marker-alt"></i>
          </div>
          <p><strong>Visit Us</strong><br/>Kamalpokhari, Street 13<br/>Kathmandu, Nepal</p>
        </div>
      </div>
    
      <div class="bottom-section">
        <!-- Left: Message Info -->
        <div class="message-info">
          <h2 class="section-title-left">Message Us</h2>
          <p>If you want to be considered for consultation or feedback, please complete the form and our team will get back to you shortly after reviewing your submitted information.</p>
          <div class="badge-box">
            <img src="${pageContext.request.contextPath}/images/Logo2.png" alt="Award Logo"/>
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
</body>
</html>
