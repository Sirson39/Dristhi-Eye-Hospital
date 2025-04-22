<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drishti Eye Care - About Us</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Publiccss/style.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
</head>
<body>
    <nav class="navbar">
        <ul class="nav-menu">
          <li><a href="${pageContext.request.contextPath}/Home.jsp">Home</a></li>
          <li><a href="${pageContext.request.contextPath}/AboutUs.jsp" class="active">About Us</a></li>
          <li><a href="${pageContext.request.contextPath}/Doctors.jsp">Doctors</a></li>
          <li><a href="${pageContext.request.contextPath}/ContactUs.jsp">Contact Us</a></li>
          <li><a href="${pageContext.request.contextPath}/Login.jsp">Login/Sign Up</a></li>
        </ul>
    </nav>

    <div class="about-banner">
      <h1 class="banner-heading">ABOUT DRISHTI</h1>
    </div>
  
    <div class="about-wrapper">
      <section class="about-intro">
        <h2 class="about-heading">Caring for Your Vision, Committed to Your Future</h2>
        <p>
          At Drishti Eye Care Hospital, we believe that good vision is the foundation of a better life. Founded with a mission to provide exceptional eye care services to our community,
           we are proud to be recognized as a trusted name in ophthalmology. With years of experience, advanced technology, and a compassionate team of experts,
           we are dedicated to preserving and enhancing the gift of sight.
        </p>
      </section>
  
      <section class="about-intro">
        <h2 class="about-heading">Our Mission</h2>
        <p>
          Our mission is simple: to deliver world-class eye care with empathy, integrity, and precision. 
          Whether it's a routine eye exam or complex surgery, we treat every patient with the highest level of professionalism and personalized 
          attention.
        </p>
      </section>

      <section class="about-services">
        <h2 class="about-heading">Why Choose Drishti Eye Care Hospital?</h2>
        <ul class="service-list">
          <li>✅ Experienced Specialists: Our team includes board-certified ophthalmologists, optometrists, and surgeons with vast experience in diagnosing and treating a full range of eye conditions.</li>
          <li>✅ Advanced Technology: We invest in state-of-the-art diagnostic and surgical equipment to ensure safe, accurate, and efficient treatment.</li>
          <li>✅ Patient-Centered Approach: We listen to your concerns, explain your options clearly, and involve you in every step of your care journey.</li>
          <li>✅ Comprehensive Services: From cataract and glaucoma treatment to pediatric eye care and LASIK surgery, we offer a complete spectrum of services under one roof.</li>
        </ul>
      </section>
  
      <section class="about-intro">
        <h2 class="about-heading">Our Vision</h2>
        <p>
          As we continue to grow, our focus remains on delivering accessible, affordable, and advanced eye care to all. We are committed to community outreach, awareness campaigns, and innovations that transform lives through better vision.
        </p>
      </section>
    </div>
    
    <div class="ceo-message-section fade-in-up">
      <div class="ceo-text">
        <h1>Message from the CEO</h1>
        <p>Let us discover what the CEO has to tell us about Drishti and its potential.</p>
        <p class="quote">
          “Drishti Eye Care Hospital is a patient-centered eye care institution dedicated to restoring and preserving vision for people of all ages.
          Rooted in compassion and driven by innovation, Drishti is on a mission to bring world-class eye care to every corner of Nepal—
          especially to those in underserved and rural communities who deserve the right to see the world clearly.”
        </p>
        <p class="ceo-name">- Rushang Sunuwar</p>
        <p class="ceo-title">CEO of Drishti Eye Care</p>
      </div>
      <div class="ceo-image">
        <img src="${pageContext.request.contextPath}/images/ceo.png" alt="CEO Photo" />
      </div>
    </div>
        
    <section class="about-team">
      <h2 class="about-heading-team">Meet Our Team</h2>
      <div class="team-grid">
        <div class="team-profile">
          <img src="${pageContext.request.contextPath}/images/rushang.jpg" alt="Rushang Sunuwar" class="team-photo" />
          <h3 class="team-name">Rushang Sunuwar</h3>
          <p class="team-title">Co-Founder & CEO</p>
        </div>
        <div class="team-profile">
          <img src="${pageContext.request.contextPath}/images/sirson.jpg" alt="Sirson Sharma Chapagain" class="team-photo" />
          <h3 class="team-name">Sirson Sharma Chapagain</h3>
          <p class="team-title">Co-Founder & COO</p>
        </div>
        <div class="team-profile">
          <img src="${pageContext.request.contextPath}/images/asseem.jpg" alt="Assem Lovely" class="team-photo" />
          <h3 class="team-name">Assem Lovely</h3>
          <p class="team-title">Chief Innovation Officer</p>
        </div>
        <div class="team-profile">
          <img src="${pageContext.request.contextPath}/images/puspanjali.jpg" alt="Puspanjali Adhikari" class="team-photo" />
          <h3 class="team-name">Puspanjali Adhikari</h3>
          <p class="team-title">Pediatric Ophthalmologist</p>
        </div>
        <div class="team-profile">
          <img src="${pageContext.request.contextPath}/images/bidhan.jpg" alt="Bidhan Banjade" class="team-photo" />
          <h3 class="team-name">Bidhan Banjade</h3>
          <p class="team-title">President</p>
        </div>
      </div>
    </section>

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
