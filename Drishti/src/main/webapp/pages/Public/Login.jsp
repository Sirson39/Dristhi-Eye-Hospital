<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Drishti Eye Care - Login</title>
  <!-- Application CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Publiccss/style.css" />
</head>
<body>
  <nav class="navbar">
    <ul class="nav-menu">
      <li><a href="${pageContext.request.contextPath}/Home.jsp">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/AboutUs.jsp">About Us</a></li>
      <li><a href="${pageContext.request.contextPath}/Doctors.jsp">Doctors</a></li>
      <li><a href="${pageContext.request.contextPath}/ContactUs.jsp">Contact Us</a></li>
      <li><a href="${pageContext.request.contextPath}/Login.jsp" class="active">Login/Sign Up</a></li>
    </ul>
  </nav>

  <div class="container_Registration">
    <div class="left">
      <img src="${pageContext.request.contextPath}/images/YourParagraphImage.png" alt="Login Illustration" />
    </div>
    <div class="right">
      <h3>Log In with Drishti Eye Care</h3>
      <form method="post" action="${pageContext.request.contextPath}/login">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Enter username" required />
    
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter password" required />
    
        <label for="user-type">Login as:</label>
        <select id="user-type" name="user_type" required>
          <option value="" disabled selected>Select user type</option>
          <option value="admin">Admin</option>
          <option value="doctor">Doctor</option>
          <option value="patient">Patient</option>
        </select>
    
        <p>No account? <a href="${pageContext.request.contextPath}/SignUp.jsp">Create one</a></p>
        <button type="submit">Log in</button>
      </form>
    </div>
  </div>
</body>
</html>
