<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Drishti Eye Care - Sign Up</n></title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Publiccss/style.css" />
</head>
<body>
  <nav class="navbar">
    <ul class="nav-menu">
      <li><a href="${pageContext.request.contextPath}/Home.jsp">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/AboutUs.jsp">About Us</a></li>
      <li><a href="${pageContext.request.contextPath}/Doctors.jsp">Doctors</a></li>
      <li><a href="${pageContext.request.contextPath}/ContactUs.jsp">Contact Us</a></li>
      <li><a href="${pageContext.request.contextPath}/Login.jsp">Login/Sign Up</a></li>
    </ul>
  </nav>

  <div class="container_Registration">
    <div class="left">
      <img src="${pageContext.request.contextPath}/images/signin.png" alt="Sign Up Illustration" />
    </div>
    <div class="right">
      <h3>Sign Up with Drishti Eye Care</h3>
      <form method="post" action="${pageContext.request.contextPath}/signup">
        <label for="email">Email Address</label>
        <input type="email" id="email" name="email" placeholder="Enter email address" required />

        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Enter username" required />

        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter password" required />

        <label for="confirmPassword">Confirm Password</label>
        <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Re-type password" required />

        <p>Have an account? <a href="${pageContext.request.contextPath}/Login.jsp">Log in</a></p>
        <button type="submit">Sign Up</button>
      </form>
    </div>
  </div>
</body>
</html>